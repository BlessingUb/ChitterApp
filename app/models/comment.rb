class Comment < ApplicationRecord
  belongs_to :tweet, optional: true
  belongs_to :parent, class_name: 'Comment', optional: true 
  has_many   :replies, class_name: 'Comment', foreign_key: :parent_id, dependent: :destroy
  belongs_to :user, optional: true

  
  validates :message, presence: true, length: { minimum: 10 }
  
end
