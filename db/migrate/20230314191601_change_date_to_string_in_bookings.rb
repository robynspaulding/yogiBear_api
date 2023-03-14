class ChangeDateToStringInBookings < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :date, :string
  end
end
