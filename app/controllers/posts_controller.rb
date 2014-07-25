class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
    render '/posts'
  end

  def post
    @post = Post.find_by_id(params[:id])
    render '/post'
  end
end
