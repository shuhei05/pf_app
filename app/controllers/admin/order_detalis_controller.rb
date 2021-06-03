class Admin::OrderDetalisController < ApplicationController

  private

  def order_detali_params
    params.require(:order_detali).permit(:product_id, :order_id, :quantity)
  end
end
