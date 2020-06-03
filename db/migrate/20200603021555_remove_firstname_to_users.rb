class RemoveFirstnameToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :firstname, :string
  end
end
