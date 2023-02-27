class Booking < ApplicationRecord
  belongs_to :yogi
  
  validates :date, :start_time, :end_time, :total_price, :address, :city, :state, :event_type, :in_person, :paid, :email, presence: true
end
