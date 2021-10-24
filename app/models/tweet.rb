class Tweet < ApplicationRecord
  validates :message, presence: true, length: { minimum: 3 }
end
