class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
    render '/posts'
  end

  def show
    @posts = Post.find_by_id(params[:id])
    render '/posts'
  end
end
