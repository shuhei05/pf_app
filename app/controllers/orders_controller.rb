class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def confirm
    @order = Order.new
    @order.user_id = current_user.id
    @cart_items = current_user.cart_items.all
  end

  def create
    @order = current_user.orders.new(order_params)
    #@order.user_id = current_user.id
    @order.save
    redirect_to complete_orders_path
  end

  def complete
  end

  def show
    @order = Order.find(params[:id])
  end

  private
  def order_params
    params.require(:order).permit(:introduction,:user_id)
  end

end
