class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.integer :user_id
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end
