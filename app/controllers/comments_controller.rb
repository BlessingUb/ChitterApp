class CommentsController < ApplicationController

  def create
    @tweet = Tweet.find( params[:tweet_id] )
    @comment = @tweet.comments.new(comment_params)
    respond_to do |format|
      if @comment.save
      format.html {redirect_to tweets_path, notice: 'Comment was successfully created.' }
      format.js 
      end
    end
    
  end
 private
    def comment_params
      params.require(:comment).permit( :message, :user_id, :tweet_id )
    end
end
