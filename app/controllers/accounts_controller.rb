class AccountsController < ApplicationController
  before_action :authenticate_user!, only: [:mypage]
  before_action :set_user, only: [:show]

  def show
  end

  def mypage
    redirect_to account_path(current_user)
  end
  
  private
  
    def set_user
      @user = User.find(params[:id])
    end
end
