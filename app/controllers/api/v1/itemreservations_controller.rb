class Api::V1::ItemreservationsController < ApplicationController
  before_action :authenticate_user!

  def show
    items = Item.find(params[:id])
    item_reservations = ItemReservation.where(item: items).includes(:reservation)
    list = []
    item_reservations.each do |item_reservation|
      list << item_reservation.reservation.as_json(only: %i[start_date end_date])
    end
    render json: {
      data: list.as_json,
      status: 200
    }
  end
end
