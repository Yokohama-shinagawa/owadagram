class UsersController < ApplicationController
  def ranking
    @ranking = Tweet.group(:user_id).order("count_user_id DESC").limit(3).count("user_id").keys
  end
end