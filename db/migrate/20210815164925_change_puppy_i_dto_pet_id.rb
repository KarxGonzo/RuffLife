class ChangePuppyIDtoPetId < ActiveRecord::Migration[6.1]
  def change
    rename_column :favorite_snacks, :puppy_id, :pet_id
  end
end
