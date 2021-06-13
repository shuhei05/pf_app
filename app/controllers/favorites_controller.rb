class FavoritesController < ApplicationController

  before_action :authenticate_user!

  def create
    share = Share.find(params[:share_id])
    favorite = current_user.favorites.new(share_id: share.id)
    favorite.save
    redirect_to shares_path
  end

  def destroy
    share = Share.find(params[:share_id])
    favorite = current_user.favorites.find_by(share_id: share.id)
    favorite.destroy
    redirect_to shares_path(share)
  end

end
