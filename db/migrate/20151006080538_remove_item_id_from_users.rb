class RemoveItemIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :item_id, :integer
  end
end
