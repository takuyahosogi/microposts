class FavoritesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    current_user.favorite(@user)
    flash[:success] = 'マイクロポストをお気に入りしました。'
    redirect_to user
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.unfavorite(@user)
    flash[:success] = 'マイクロポストのお気に入りを解除しました。'
    redirect_to user
  end
end
