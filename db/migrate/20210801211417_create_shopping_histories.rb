class CreateShoppingHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :shopping_histories do |t|
      t.string :user_id
      t.date :date
      t.integer :item_id
      t.integer :quantity

      t.timestamps
    end
  end
end
