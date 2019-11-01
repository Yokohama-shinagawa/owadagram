class TweetsController < ApplicationController
  before_action :tweet_find, only: [:show, :destroy, :edit, :update]
  
  def tweet_find
    @tweet=Tweet.find_by(id: params[:id])
  end
  
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
  end
  
  def destroy
    @tweet.destroy
    redirect_to("/")
  end
  
  def edit
  end
  
  def update
    @tweet.text= params[:text]
    @tweet.save
    redirect_to("/")
  end
  
  private
  def tweet_params
    params.permit(:text)
  end
end
