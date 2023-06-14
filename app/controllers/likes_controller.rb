class LikesController < ApplicationController
    def create
        @like = Like.new(author_id: params[:user_id], post_id: params[:post_id])
        if @like.save
            flash[:notice] = 'Your like was created successfully'
            redirect_to user_posts_path(current_user)
        else
            flash[:alert] = 'Sorry, something went wrong!'
            redirect_to user_posts_path(current_user)
        end
    end
end