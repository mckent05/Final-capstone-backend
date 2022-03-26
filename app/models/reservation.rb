class Reservation < ApplicationRecord
  has_many :item_reservations, class_name: 'ItemReservation', foreign_key: 'reservation_id', dependent: :destroy
  has_many :items, through: :item_reservations, dependent: :destroy
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

  validates :start_date, presence: true,  comparison: { greater_than_or_equal_to: Date.current }
  validates :end_date, presence: true, comparison: {greater_than_or_equal_to: :start_date}
end
