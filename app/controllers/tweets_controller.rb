class TweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

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
        respond_with Tweet.create(tweet_params.merge(user_id: current_user.id))
      else
        render :new
      end
    end
  
    def edit
      @tweet = Tweet.find(params[:id])
    end
  
    def update
      @tweet = Tweet.find(params[:id])
  
      if @tweet.update(tweet_params)
        redirect_to @tweet
      else
        render :edit
      end
    end

    def destroy
      @tweet= Tweet.find(params[:id])
      @tweet.destroy
  
      redirect_to root_path
    end
    
    private
    def tweet_params
      params.require(:tweet).permit(:message)
    end
    
  
end
