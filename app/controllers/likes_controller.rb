class LikesController < ApplicationController
    def create
        @like = Like.new(
            user_id: current_user.id,
            tweet_id: params[:id]
        )
        @like.save
        redirect_to("/")
    end
    
    def destroy
        @like = Like.find_by(
            user_id: current_user.id,
            tweet_id: params[:id]
        ).destroy
        
        @like.save
        redirect_to("/")
    end
end
