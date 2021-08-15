class ChangeIntegerLimitInItems < ActiveRecord::Migration[6.1]
  def change
    change_column :items, :upc, :integer, limit: 8
  end 
end
