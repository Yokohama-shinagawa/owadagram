class UsersController < ApplicationController
  before_action :authenticate_user!, except: :new
  
  
  def ranking
    @ranking = Tweet.group(:user_id).order("count_user_id DESC").limit(6).count("user_id").keys
  end
end