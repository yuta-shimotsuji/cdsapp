class AccountsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update]
  before_action :set_user, only: [:show, :edit, :update]

  def show
  end

  def edit
    unless @user == current_user
      redirect_to edit_account_path(@user)
    end
  end
  
  def update
    if current_user.update(account_params)
      redirect_to account_path(current_user)
    else
      redirect_to edit_account_path(current_user)
    end
  end
  
  private
  
    def set_user
      @user = User.find(params[:id])
    end
end
