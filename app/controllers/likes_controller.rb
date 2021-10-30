class LikesController < ApplicationController
  def create
    
    tweet = Tweet.find( params[:tweet_id] )
    if like = Like.find_by( tweet: tweet, user: current_user )
      like.destroy
    else
      like = Like.new( tweet: tweet, user: current_user )

      like.save
    end
    redirect_to root_path
  
 end

end
