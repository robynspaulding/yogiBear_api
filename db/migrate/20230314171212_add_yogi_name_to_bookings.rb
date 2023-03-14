class AddYogiNameToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :yogi_name, :string
  end
end
