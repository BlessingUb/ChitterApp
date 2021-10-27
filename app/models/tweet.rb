class Tweet < ApplicationRecord
  has_many :comments

  validates :message, presence: true, length: { minimum: 3 }
end
