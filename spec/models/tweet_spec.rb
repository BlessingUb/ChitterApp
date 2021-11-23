require 'rails_helper'
require 'spec_helper'

RSpec.describe Tweet, type: :model do
  it 'should validate presence of body' do
    tweet = Tweet.new
    tweet.valid?
    expect(tweet.errors.messages[:body]).to include "can't be blank"
  end
end
