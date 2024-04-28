class FavoritesController < ApplicationController

  def create
    if current_user != nil
      @post_favorite = Favorite.new(user_id: current_user.id, post_id: params[:post_id])
      @post_favorite.save
      redirect_to new_post_path
    else
      flash[:alert] = 'いいねにはログインが必要です'
      redirect_to root_path
    end
  end

  def destroy
    if current_user != nil
      @post_favorite = Favorite.find_by(user_id: current_user.id, post_id: params[:post_id])
      @post_favorite.destroy
      redirect_to new_post_path
    else
      flash[:alert] = 'いいねにはログインが必要です'
      redirect_to root_path
    end
  end
end
