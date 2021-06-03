class ProductsController < ApplicationController
  def index
    @products = Product.all
    #@product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to products_path, notice: '数量更新しました'
  end

  private

  def product_params
    params.require(:product).permit(:name, :introduction, :quantity)
  end

end
