class Tweet < ApplicationRecord
  has_many :comments
  belongs_to :user
  
  validates :message, presence: true, length: { minimum: 3 }
end
