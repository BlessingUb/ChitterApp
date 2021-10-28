class CommentsController < ApplicationController
  def create
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.create(comment_params.merge(user_id: current_user.id))
    respond_with post, comment
    redirect_to tweet_path(@tweet)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
