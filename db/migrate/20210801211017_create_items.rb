class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :picture
      t.integer :upc
      t.integer :price
      t.string :brand
      t.string :merchant
      t.string :name

      t.timestamps
    end
  end
end
