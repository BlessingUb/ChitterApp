class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :bio, :string
    add_column :users, :string, :string
    add_column :users, :location, :string
  end
end
