class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :create]

  def new
    @post = Post.new
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @latLng = Geocoder.search(@post.address).first.coordinates
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render action: :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    @latLng = Geocoder.search(@post.address).first.coordinates
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to new_post_path
  end

  def post_params
    params.require(:post).permit(:title, :body, :address)
  end
end
