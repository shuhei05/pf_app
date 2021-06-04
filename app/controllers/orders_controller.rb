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
    @order.save
      @cart_items = current_user.cart_items.all
      @cart_items.each do |cart_item|
      @order_detalis = @order.order_detalis.new
      @order_detalis.product_id = cart_item.product_id
      @order_detalis.quantity = cart_item.quantity
      @order_detalis.save
    end
    current_user.cart_items.destroy_all
    redirect_to complete_orders_path
  end

  def show
    @order = Order.find(params[:id])
    @order_detalis = @order.order_detalis
  end

  private
  def order_params
    params.require(:order).permit(:introduction,:user_id)
  end

end
