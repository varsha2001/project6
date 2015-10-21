class AddItemIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :item_id, :integer
  end
end
