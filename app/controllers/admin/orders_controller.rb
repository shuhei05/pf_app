class Admin::OrdersController < ApplicationController
  
  before_action :authenticate_admin!

  def index
    @orders = Order.order(created_at: :desc).page(params[:page]).per(8)
  end

  def show
    @order = Order.find(params[:id])
    @order_detalis = @order.order_detalis
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to admin_orders_path,notice: '発送状況変更しました'
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :is_active)
  end
end
