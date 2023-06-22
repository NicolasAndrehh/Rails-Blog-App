class LikesController < ApplicationController
  def create
    @like = Like.new(author_id: current_user.id, post_id: params[:post_id])
    if @like.save
      flash[:notice] = 'Your like was created successfully'
    else
      flash[:alert] = 'Sorry, something went wrong!'
    end
    redirect_to user_post_path(params[:user_id], params[:post_id])
  end
end
