# frozen_string_literal: true

# this is comments class controller
class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    @comment.save

    redirect_to post_path(@post)
  end

  private

  def comment_params
    params
      .require(:comment)
      .permit(:username, :email, :comment)
  end

end
