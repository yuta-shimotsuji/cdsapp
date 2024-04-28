class HomesController < ApplicationController

  def top
    @post = Post.new
    @posts = Post.order("RANDOM()").limit(3)
  end

  def privacy_policy
  end

  def terms_of_service
  end

  def how_to_use_the_app
  end
end
