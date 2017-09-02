class FavoritesController < ApplicationController
  def create
    user = User.find(params[:micropost_id])
    current_user.micorpost(user)
    flash[:success] = 'マイクロポストをお気に入りしました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:micorpost_id])
    current_user.unmicropost(user)
    flash[:success] = 'マイクロポストのお気に入りを解除しました。'
    redirect_to user
  end
end
