class PostsController < ApplicationController

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
  end

  def post_params
    params.require(:post).permit(:title, :body, :address)
  end
end
