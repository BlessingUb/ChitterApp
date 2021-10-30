class CommentsController < ApplicationController
  def create
    tweet = Tweet.find( params[:tweet_id] )
    comment = Comment.new( tweet: tweet, user: current_user, comment_params )

    comment.save

    redirect_to root_path
 end
 private
    def comment_params
      params.require(:comment).permit(:body)
    end
end
