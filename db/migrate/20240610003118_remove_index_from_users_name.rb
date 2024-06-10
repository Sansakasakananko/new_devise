class RemoveIndexFromUsersName < ActiveRecord::Migration[7.1]
  def change
    remove_index :users, :name, if_exists: true
  end
end
