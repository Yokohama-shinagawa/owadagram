class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all.order(created_at: "DESC").page(params[:page]).per(5)
  end
  
  def new
    
  end
  
  def create
    Tweet.create(text: tweet_params[:text],user_id: current_user.id)
    redirect_to("/")
  end
  
  def show
    @tweet=Tweet.find_by(id: params[:id])
  end
  
  def destroy
     @tweet=Tweet.find_by(id: params[:id])
    @tweet.destroy
    redirect_to("/")
  end
  
  def edit
    @tweet=Tweet.find_by(id: params[:id])
  end
  
  def update
    @tweet=Tweet.find_by(id: params[:id])
    @tweet.text= params[:text]
    @tweet.save
    redirect_to("/")
  end
  
  private
  def tweet_params
    params.permit(:text)
  end
end
