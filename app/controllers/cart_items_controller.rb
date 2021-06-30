class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cart_items = current_user.cart_items
  end

  def create
    @cart_items = current_user.cart_items.all
    cart_item_params.each do |cart_item_param|
      cart_item = @cart_items.find_by(product_id: cart_item_param['product_id']) # カートに入れる商品idとカートに入っている商品id取得
      if cart_item.nil?
        # カゴの中に同じ商品がなかった場合
        current_user.cart_items.create(cart_item_param)
      else
        # カゴの中に同じ商品があった場合
        new_quantity = cart_item.quantity + cart_item_param['quantity'].to_i
        cart_item.update_attribute(:quantity, new_quantity)
      end
    end
    # カートのリフレッシュ
    @cart_items = current_user.cart_items.all
    redirect_to cart_items_path
  end

  def update_all
    cart_item_update_quantity_params.each do |param|
      cart_item = CartItem.find(param['id'])
      cart_item.update(param)
    end
    redirect_to cart_items_path, notice: '数量変更しました'
  end

  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to cart_items_path, notice: '削除しました'
  end

  def destroy_all
    @cart_items = current_user.cart_items
    @cart_items.destroy_all
    redirect_to cart_items_path, notice: 'カート内商品全て削除しました'
  end

  private

  # viewから送られてきたカートに追加したい商品
  # ただし, quantityが0のものも送られてくるので事前フィルタリングする
  def cart_item_params
    params.require(:cart_item).permit(cart_item: [:product_id, :quantity])["cart_item"].filter do |cart_item_param|
      cart_item_param['quantity'] != '0'
    end
  end

  # カートアイテムの個数変更用
  def cart_item_update_quantity_params
    params.require(:cart_item).permit(cart_item: [:id, :quantity])["cart_item"]
  end
end
