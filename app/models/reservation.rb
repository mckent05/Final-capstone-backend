class Reservation < ApplicationRecord
    has_many :itemreservations, class_name: "ItemReservation", foreign_key: "reservation_id", dependent: :destroy
    belongs_to :user, class_name: "User", foreign_key: "user_id"

    validates :start_date, presence: true
    validates :end_date, presence: true
end
