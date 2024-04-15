class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    if current_user != nil
      @comment.user_id = current_user.id
      @comment.post_id = @post.id
      if @comment.save
        redirect_to post_path(@post)
        flash[:notice] = 'コメントに成功しました'
      else
        flash[:alert] = 'コメントに失敗しました'
        redirect_to post_path(@post)
      end
    else
      flash[:alert] = '投稿にはログインが必要です'
      redirect_to post_path(@post)
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @post_comments = @post.comments
    Comment.find_by(id: params[:id], post_id: params[:post_id]).destroy
    flash[:notice] = 'コメントを削除しました'
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
