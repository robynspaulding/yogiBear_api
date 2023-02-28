class Booking < ApplicationRecord
  belongs_to :yogi
  
  validates :yogi_id, :user_id, :date, :start_time, :end_time, :total_price, :address, :city, :state, :event_type, :email,
  #  :in_person, :paid, 
  presence: true
end
