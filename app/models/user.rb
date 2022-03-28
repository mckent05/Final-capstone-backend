class User < ApplicationRecord
  has_many :reservations, class_name: 'Reservation', foreign_key: 'user_id', dependent: :destroy
  has_many :items, class_name: 'Item', foreign_key: 'user_id', dependent: :destroy

  validates :username, presence: true, uniqueness: true
end
