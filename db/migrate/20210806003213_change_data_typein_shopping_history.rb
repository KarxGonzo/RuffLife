class ChangeDataTypeinShoppingHistory < ActiveRecord::Migration[6.1]
  def change
    change_column :shopping_histories, :user_id, :integer,  using: 'user_id::integer'
  end
end
