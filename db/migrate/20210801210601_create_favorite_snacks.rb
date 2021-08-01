class CreateFavoriteSnacks < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_snacks do |t|
      t.integer :puppy_id
      t.integer :item_id
      t.integer :rating

      t.timestamps
    end
  end
end
