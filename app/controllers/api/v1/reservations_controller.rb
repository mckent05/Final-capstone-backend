class Api::V1::ReservationsController < ApplicationController
  def index
    reservations = User.first.reservations.includes(:item_reservations)
    list = []
    reservations.each do |reservation|
      reservation.item_reservations.each do |item_reserve|
        list << { reservation: reservation.as_json(only: %i[id start_date end_date]),
                  item: item_reserve.item.as_json(only: %i[id name capacity price city description image]) }
      end
    end
    render json: { data: list.as_json, status: 200 }
  end

  def create
    reserved_item = Item.find(new_reservation_params[:item_id])
    reservation_made = User.first.reservations.new(start_date: new_reservation_params[:start_date],
                                                   end_date: new_reservation_params[:end_date])
    item_reservation = ItemReservation.new(reservation: reservation_made, item: reserved_item)
    if item_reservation.save
      render json: { message: "Reservation for #{reserved_item.name} made succesfully", status: 200 }
    else
      render json: { message: "Reservation for #{reserved_item.name} failed", status: 400 }
    end
  end

  def destroy
    reservation = Reservation.find(params[:id])
    if reservation.destroy
      render json: { message: 'Reservation succesfully deleted', status: 200 }
    else
      render json: { message: 'Reservation not deleted', status: 400 }
    end
  end

  private

  def new_reservation_params
    params.permit(:start_date, :end_date, :item_id)
  end
end
