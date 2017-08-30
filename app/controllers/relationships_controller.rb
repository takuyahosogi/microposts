class RelationshipsController < ApplicationController
  before_action :require_user_logged_in

  def create
    user = User.find(params[:follow_id])
    current_user.follow(user)
    flash[:success] = 'ユーザをフォローしました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:follow_id])
    current_user.unfollow(user)
    flash[:success] = 'ユーザのフォローを解除しました。'
    redirect_to user
  end
  
  def create
    micropost = Micropost.find(params[:favorite()_id])
    current_micropost.favorite(micropost)
    flash[:success] = 'マイクロポストをいいねしました。'
    redirect_to micropost
  end

  def destroy
    micropost = Micropost.find(params[:favorite_id])
    current_micropost.unfavorite(micropost)
    flash[:success] = 'マイクロポストのいいねを解除しました。'
    redirect_to micropost
  end
end