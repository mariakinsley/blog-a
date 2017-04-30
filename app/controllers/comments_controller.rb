class CommentsController < ApplicationController
  def create
    @post =Post (params[:post_id])
    @post =@post.comments.create(params[:comment].permit(:name, :body))
    redirect_to post_path(@post)
  end
end
