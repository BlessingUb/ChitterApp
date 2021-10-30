class Tweet < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_many :likes
  
  validates :message, presence: true, length: { minimum: 3 }
end
