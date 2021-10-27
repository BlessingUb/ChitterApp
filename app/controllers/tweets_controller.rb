class TweetsController < ApplicationController
  before_action :set_post, only: [:show]
  before_action :authenticate_user!, except: [:show, :index]

    def index
      @tweets = Tweet.all
    end
    def show 
      @tweet = Tweet.find(params[:id])
    end
  
    def new
      @tweet = Tweet.new
    end
  
    def create
      @tweet = Tweet.new(tweet_params)
  
      if @tweet.save
        redirect_to tweets_path
      else
        render :new
      end
    end
  
    private
    def tweet_params
      params.require(:tweet).permit(:message)
    end
    
  
end
