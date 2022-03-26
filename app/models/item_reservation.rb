class ItemReservation < ApplicationRecord
  belongs_to :reservation, class_name: 'Reservation', foreign_key: 'reservation_id'
  belongs_to :item, class_name: 'Item', foreign_key: 'item_id'
end
