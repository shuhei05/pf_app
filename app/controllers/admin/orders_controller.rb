class Admin::OrdersController < ApplicationController
  def index
    @orders = Order.all.page(params[:page]).per(8)
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
