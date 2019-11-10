class CommentsController < ApplicationController
  
   
   def create
      Comment.create(text: memo_params[:text], user_id: current_user.id, tweet_id: memo_params[:tweet_id])
      @comments = Comment.all
      redirect_to "/"
   end
   
  private
  def memo_params
    params.require(:comment).permit(:text, :tweet_id)
  end
  
end
