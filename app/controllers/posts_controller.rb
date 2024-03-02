class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :create]

  def new
    @post = Post.new
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @latLng_test = Geocoder.search(@post.address)
    if @latLng_test.present?
      @latLng = Geocoder.search(@post.address).first.coordinates
    else
      redirect_to root_path, notice: '住所が不正のため表示できませんでした'
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      @posts = Post.all
      render action: :new, status: :unprocessable_entity
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
