class Comment < ApplicationRecord
  belongs_to :tweet, optional: true
  belongs_to :user, optional: true

  
  validates :message, presence: true, length: { minimum: 10 }
  
end
