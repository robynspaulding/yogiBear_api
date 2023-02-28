class Yogi < ApplicationRecord
  has_many :bookings
  
  validates :name, :rate, :yoga_type, :bio, :contact, :city, :state, :available_start_time, :available_end_time, presence: true
end
