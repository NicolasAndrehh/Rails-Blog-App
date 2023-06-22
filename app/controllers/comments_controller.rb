class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(author_id: current_user.id, post_id: params[:post_id], **comment_params)

    if @comment.save
      flash[:notice] = 'Your comment was created successfully'
      redirect_to user_posts_path(params[:user_id])
    else
      flash[:alert] = 'Sorry, something went wrong!'
      render :new
    end
  end

  def destroy
    @user = User.find(current_user.id)
    @comment = if @user.is? :admin
                 Comment.find(params[:id])
               else
                 Comment.where(author_id: @user.id).find(params[:id])
               end

    if @comment.destroy
      flash[:notice] = 'Your comment was deleted successfully'
      redirect_to user_path(params[:user_id]) if request.path == user_path(params[:user_id])
      redirect_to user_posts_path(params[:user_id]) if request.path == user_posts_path(params[:user_id], params[:id])
    else
      flash[:alert] = 'Sorry, something went wrong!'
      render :show
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
