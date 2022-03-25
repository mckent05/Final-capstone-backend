class AddDetailsToItemReservation < ActiveRecord::Migration[7.0]
  def change
    add_reference :item_reservations, :item, null: false, foreign_key: true
    add_reference :item_reservations, :reservation, null: false, foreign_key: true
  end
end
