class Admin::OrderDetalisController < ApplicationController
  
  def show
  @order_detalis = @order.order_detalis
  end

  private

  def order_detali_params
    params.require(:order_detali).permit(:product_id, :order_id, :quantity)
  end
end
