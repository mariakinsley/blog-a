class CommentsController < ApplicationController
  def create
    @post =Post (params[:post_id])
    @post =@post.comments.create(params[:comment].permit(:name, :body))
    redirect_to post_path(@post)
  end
  def destroy
      @post =Post (params[:post_id])
      @comments =@post.comments.find(params[:id])
      @comment.destroy
      redirect_to post_path(@)
  end
end
