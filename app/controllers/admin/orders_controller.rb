class Admin::OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Oder.find(params[:id])
    @order_detalis = @order.order_detalis
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to admin_order_path(@order.id)
  end
  
  private
  
  def order_params
    params.require(:order).permit(:user_id, :is_active)
  end
end
