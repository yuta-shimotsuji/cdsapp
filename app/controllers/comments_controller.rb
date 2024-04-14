class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    if current_user != nil
      @comment.user_id = current_user.id
      @comment.post_id = @post.id
      if @comment.save
        redirect_to post_path(@post)
      else
        flash[:alert] = 'コメントに失敗しました'
        redirect_to post_path(@post)
      end
    else
      @user = User.find(@post.user_id)
      @latLng_test = Geocoder.search(@post.address)
      @comment = Comment.new
      @post_comments = @post.comments
      if @latLng_test.present?
        @latLng = Geocoder.search(@post.address).first.coordinates
      else
        redirect_to root_path, notice: '住所が不正のため表示できませんでした'
      end
      flash[:alert] = '投稿にはログインが必要です'
      render "posts/show"
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @post_comments = @post.comments
    Comment.find_by(id: params[:id], post_id: params[:post_id]).destroy
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
