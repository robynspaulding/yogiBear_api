class AddUserIdToYogi < ActiveRecord::Migration[7.0]
  def change
    add_column :yogis, :user_id, :integer
  end
end
