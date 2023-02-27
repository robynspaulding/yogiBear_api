class CreateYogis < ActiveRecord::Migration[7.0]
  def change
    create_table :yogis do |t|
      t.string :name
      t.integer :rate
      t.string :yoga_type
      t.text :bio
      t.string :contact
      t.string :city
      t.string :state
      t.string :available_start_time
      t.string :available_end_time

      t.timestamps
    end
  end
end
