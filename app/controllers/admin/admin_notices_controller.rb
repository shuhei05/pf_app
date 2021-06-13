class Admin::AdminNoticesController < ApplicationController

  before_action :authenticate_admin!


  def index
    @user_notices = UserNotice.order(created_at: :desc).page(params[:page]).per(3)
  end

  def users
    @users = User.all
  end

  def new
    @admin_notice = AdminNotice.new
  end

  def create
    @admin_notice = AdminNotice.new(admin_notice_params)
    @admin_notice.admin_id = current_admin.id
    if @admin_notice.save
      redirect_to admin_admin_notices_path, notice: '送信しました'
    else
      render :new
    end
  end

  private

  def admin_notice_params
    params.require(:admin_notice).permit(:information_title, :information_body)
  end

end
