class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :create]
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]

  def new
    @post = Post.new
    @posts = Post.all.includes(:user).page(params[:page]).per(10)
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
    @latLng_test = Geocoder.search(@post.address)
    if @latLng_test.present?
      @latLng = Geocoder.search(@post.address).first.coordinates
    else
      redirect_to root_path, notice: '住所が不正のため表示できませんでした'
    end
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to post_path(@post), notice: '投稿しました'
    else
      @posts = Post.all
      render action: :new, status: :unprocessable_entity, notice: '投稿に成功しました'
    end
  end

  def edit
    @post = Post.find(params[:id])
    @latLng = Geocoder.search(@post.address).first.coordinates
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post), notice: '投稿を編集しました'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to new_post_path, notice: '投稿を削除しました'
  end

  def post_params
    params.require(:post).permit(:title, :body, :address)
  end

  def ensure_correct_user
    @post = Post.find(params[:id])
    if @post.user_id != current_user.id
      flash[:alert] = "権限がありません"
      redirect_to new_post_path
    end
  end
end
