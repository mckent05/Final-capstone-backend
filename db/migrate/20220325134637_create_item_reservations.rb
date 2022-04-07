class CreateItemReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :item_reservations do |t|

      t.timestamps
    end
  end
end
