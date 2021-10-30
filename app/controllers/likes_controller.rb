class LikesController < ApplicationController
  def create
    tweet = Tweet.find( params[:tweet_id] )
    like = Like.new( tweet: tweet, user: current_user )

    like.save

    redirect_to root_path
 end

end
