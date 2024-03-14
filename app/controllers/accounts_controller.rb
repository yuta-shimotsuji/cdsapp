class AccountsController < ApplicationController
  before_action :authenticate_user!, only: [:mypage]
  before_action :set_user, only: [:show, :favorite_show]

  def show
    @posts = Post.where(user_id: params[:id]).includes(:user).page(params[:page]).per(10)
  end

  def favorite_show
    @posts = Favorite.where(user_id: params[:id]).includes(:post).includes(:user).page(params[:page]).per(10)
  end

  def mypage
    redirect_to account_path(current_user)
  end
  
  private
  
    def set_user
      @user = User.find(params[:id])
    end
end
