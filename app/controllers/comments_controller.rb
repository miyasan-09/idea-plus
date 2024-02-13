class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, id: params[:Product_id])
  end
end
