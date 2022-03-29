class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, 
          :jwt_authenticatable,
          :registerable,
          jwt_revocation_strategy: JwtDenylist
  
         has_many :reservations, class_name: 'Reservation', foreign_key: 'user_id', dependent: :destroy
  has_many :items, class_name: 'Item', foreign_key: 'user_id', dependent: :destroy

  validates :username, presence: true, uniqueness: true
end
