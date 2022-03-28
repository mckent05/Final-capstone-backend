class Item < ApplicationRecord
  has_many :item_reservations, class_name: 'ItemReservation', foreign_key: 'item_id', dependent: :destroy
  has_many :reservations, through: :itemreservations, dependent: :destroy
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minium: 50, maximum: 100 }
  validates :price, presence: true, numericality: { only_integer: true }
  validates :city, presence: true
  validates :capacity, presence: true
end
