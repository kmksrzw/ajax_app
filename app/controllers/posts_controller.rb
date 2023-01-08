class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # def new
  # end

  def create
    # Post.create(content: params[:content])
    # redirect_to action: :index
    post = Post.create(content: params[:content])
    render json:{ post: post}
  end
end
