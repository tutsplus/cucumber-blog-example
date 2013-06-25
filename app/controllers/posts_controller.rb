class PostsController < ApplicationController

  def show
    @post = Post.find params[:id]
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    @post.save
    redirect_to @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
