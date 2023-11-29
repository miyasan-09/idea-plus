module CommentsHelper

  def create
    Comment.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:text ).merge(product_id: params[:product_id])
  end
end
