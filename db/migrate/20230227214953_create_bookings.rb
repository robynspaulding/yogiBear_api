class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :yogi, null: false, foreign_key: true
      t.integer :user_id
      t.date :date
      t.string :start_time
      t.string :end_time
      t.integer :total_price
      t.string :address
      t.string :city
      t.string :state
      t.string :event_type
      t.boolean :in_person
      t.boolean :paid

      t.timestamps
    end
  end
end
