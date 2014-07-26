class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :recent_posts, :categories

  protected

    def recent_posts
      @recent_posts = Rails.cache.fetch('posts', :expires_in => 10.minutes) do
        Post.limit(5)
      end
    end

    def categories
      @categories = Rails.cache.fetch('categories', :expires_in => 10.minutes) do
        Category.all
      end
    end
end
