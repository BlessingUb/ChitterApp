class AddUserRefToTweets < ActiveRecord::Migration[6.1]
  def change
    add_reference :tweets, :user, null: false, foreign_key: true
  end
end
