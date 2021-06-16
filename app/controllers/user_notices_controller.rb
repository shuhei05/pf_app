class UserNoticesController < ApplicationController
  before_action :authenticate_user!

  def index
    @admin_notices = AdminNotice.order(created_at: :desc).page(params[:page]).per(3)
  end

  def new
    @user_notice = UserNotice.new
  end

  def create
    @user_notice = UserNotice.new(user_notice_params)
    @user_notice.user_id = current_user.id
    if @user_notice.save
      redirect_to user_notices_path, notice: '送信しました'
    else
      render :new
    end
  end

  def destroy
    @admin_notice = AdminNotice.find(params[:id])
    @admin_notice.destroy
    redirect_to user_notices_path, notice: "削除しました"
  end

  private

  def user_notice_params
    params.require(:user_notice).permit(:information_title, :information_body)
  end
end
