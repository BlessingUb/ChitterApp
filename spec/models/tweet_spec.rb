require 'rails_helper'
require 'spec_helper'

RSpec.describe Tweet, type: :model do
  current_user = User.first_or_create!(firstname: 'bee', lastname: 'dee', username: 'beedee', bio: 'i am a girl', location: 'dundee', email: 'bee@example.com', password: 'beedee2', password_confirmation: 'beedee2')
  it 'should validate presence of a message' do
    tweet = Tweet.new(
      message: '',
      user: current_user
    )
    expect(tweet).to_not be_valid
    tweet.message = 'hey girl'
    expect(tweet).to be_valid

  end

  it 'message should be 3 or more character long' do
    tweet = Tweet.new(
      message: 'Hi',
      user: current_user
    )
    expect(tweet).to_not be_valid
    tweet.message = 'hey girl'
    expect(tweet).to be_valid

  end
end
