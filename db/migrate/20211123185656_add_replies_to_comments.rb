class AddRepliesToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :replies, :string do |t|
      t.references :parent, foreign_key: { to_table: :comments }
    end
    end
end
