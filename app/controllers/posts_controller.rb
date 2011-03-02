class PostsController < ApplicationController

  respond_to :html, :json

  def index
    @posts = Post.all
  
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.build
    @comments = @post.comments.order("created_at")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params[:post])
    respond_with @post
  end
  
  def edit 
    @post = Post.find(params[:id])
  end
  
  def update 
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    respond_with @post
  end
  
end
