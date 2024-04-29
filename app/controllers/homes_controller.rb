class HomesController < ApplicationController

  def top
    if current_user == nil
      @post = Post.new
      @posts = Post.order("RANDOM()").limit(3)
    else
      redirect_to new_post_path
    end
  end

  def privacy_policy
  end

  def terms_of_service
  end

  def how_to_use_the_app
  end
end
