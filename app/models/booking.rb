class Booking < ApplicationRecord
  belongs_to :yogi
  belongs_to :user
  
  validates :yogi_id, :date, :start_time, :end_time, :total_price, :address, :city, :state, :event_type, :email, :in_person, :paid, presence: true
end
