class Tweet < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_many :likes, dependent: :destroy

  validates :message, presence: true, length: { minimum: 3 }
end
