class ProductsController < ApplicationController
  def index
    @products = Product.all
    #@product = Product.find(params[:id])
    @cart_item = CartItem.new
  end

  def update_all
    product_update_quantity_params.each do |param|
      product = Product.find(param['id'])
      product.update(param)
    end
    redirect_to products_path, notice: '在庫数更新しました'
  end

  private

  def product_update_params
    params.require(:product).permit(:name, :introduction, :quantity)
  end

  def product_update_quantity_params
    params.require(:product).permit(product: [:id, :quantity])["product"]
  end
end