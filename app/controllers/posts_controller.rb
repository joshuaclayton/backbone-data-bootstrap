class PostsController < ApplicationController
  def index
    @posts = Post.chronological
  end
end
