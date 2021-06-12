class SharesController < ApplicationController

  before_action :authenticate_user!
  before_action :share_user,   only: [:edit, :update, :delete]

  def index
    @shares = Share.order(created_at: :desc).page(params[:page]).per(3)
  end

  def new
    @share = Share.new
  end

  def create
    @share = Share.new(share_params)
    @share.user_id = current_user.id
    if @share.save
      redirect_to shares_path, notice: '作成しました'
    else
      render :new
    end
  end

  def edit
    @share = Share.find(params[:id])
  end

  def update
    @share = Share.find(params[:id])
    if @share.update(share_params)
      redirect_to shares_path, notice: '変更しました'
    else
      render :edit
    end
  end

  def destroy
    @share = Share.find(params[:id])
    @share.destroy
    redirect_to shares_path
  end

  def share_user
    @share = Share.find(params[:id])
    redirect_to shares_path unless @share.user_id == current_user.id
  end

  private

  def share_params
    params.require(:share).permit(:share_information_title, :share_information)
  end

end
