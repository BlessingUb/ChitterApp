class Comment < ApplicationRecord
  belongs_to :tweet
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  
end
