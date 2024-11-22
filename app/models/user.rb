class User < ApplicationRecord
  has_many :bookings
  has_one :pal
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?

end
