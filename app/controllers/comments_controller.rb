class CommentsController < ApplicationController

  def create
    @tweet = Tweet.find( params[:tweet_id] )
    @comment = @tweet.comments.create(comment_params)
    respond_to do |format|
      format.html {redirect_to @tweet }
      format.js 
    end
    
 end
 private
    def comment_params
      params.require(:comment).permit( :message, :user_id, :tweet_id )
    end
end
