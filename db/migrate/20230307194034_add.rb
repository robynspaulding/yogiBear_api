class Add < ActiveRecord::Migration[7.0]
  def change
    add_column :yogis, :image, :string
  end
end
