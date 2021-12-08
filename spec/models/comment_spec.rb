require 'rails_helper'
require 'spec_helper'

RSpec.describe Comment, type: :model do
    current_user = User.first_or_create!(firstname: 'bee', lastname: 'dee', username: 'beedee', bio: 'i am a girl', location: 'dundee', email: 'bee@example.com', password: 'beedee2', password_confirmation: 'beedee2')
    tweet = Tweet.new(
        message: 'Hey girl',
        user: current_user
      )
    it 'should validate presence of a message' do
      comment = tweet.comments.new(
        message: '',
        user_id: 1,
        tweet_id: 1,
      )
      expect(comment).to_not be_valid
      comment.message = 'hey how are you'
      expect(tweet).to be_valid
  
    end
  
    
  end
  
