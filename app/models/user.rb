class User < ApplicationRecord
  has_many :services, dependent: :destroy
  has_many :bookings
end
