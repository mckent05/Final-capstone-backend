class Api::V1::ItemsController < ApplicationController
  def index
    items = Item.all
    render json: {
      data: items.as_json(only: %i[id name capacity price city description image]),
      status: 200
    }
  end

  def create
    user = User.find(params[:user_id])
    new_item = user.items.new(items_params)
    if new_item.save
      render json: { message: 'Item created succesfully', status: 200 }
    else
      render json: { message: 'Item failed to create', status: 400 }
    end
  end

  def destroy
    item = Item.find(params[:id])
    if item.destroy
      render json: { message: 'Item succesfully deleted', status: 200 }
    else
      render json: { message: 'Item failed to deleted', status: 400 }
    end
  end

  def show
    item = Item.find(params[:id])
    render json: {
      data: item.as_json(only: %i[id name capacity price city description image]),
      status: 200
    }
  end

  private

  def items_params
    params.require(:item).permit(:name, :capacity, :image, :description, :price, :city)
  end
end
