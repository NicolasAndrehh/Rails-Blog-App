class CommentsController < ApplicationController
  def new 
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(author_id: params[:user_id], post_id: params[:post_id], **comment_params)
    
    if @comment.save
        flash[:notice] = 'Your comment was created successfully'
        redirect_to user_posts_path(current_user)
    else
        flash[:alert] = 'Sorry, something went wrong!'
        render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end