class CartItemsController < ApplicationController
  def index
    @cart_items = current_user.cart_items
  end

  def create
    @cart_items = current_user.cart_items.all
    cart_item_params.each do |cart_item_param|
      cart_item = @cart_items.find_by(product_id: cart_item_param['product_id']) #カートに入れる商品idとカートに入っている商品id取得
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

    # @cart_item = CartItem.new(cart_item_params)
    # @cart_item.user_id = current_user.id #誰のカートか紐付け
    # @cart_items = current_user.cart_items.all
    # @cart_items.each do |cart_item|
    #   if cart_item.product_id == @cart_item.product_id
    #     new_quantity = cart_item.quantity + @cart_item.quantity.to_i
    #     @cart_item.update_attribute(:quantity, new_quantity) #変更
    #     cart_item.delete #変更
    #   end
    # end
    # @cart_item.save
    # redirect_to products_path
  end

  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(cart_item_params)
    redirect_to cart_items_path, notice: '数量変更しました' #全部変更できるようにコードを変更する。
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path, notice: '削除しました'
  end

  private

  # viewから送られてきたカートに追加したい商品
  # ただし, quantityが0のものも送られてくるので事前フィルタリングする
  def cart_item_params
    # params.require(:cart_item).permit(:quantity,:product_id,:user_id)
    params.require(:cart_item).permit(cart_item: [:product_id, :quantity])["cart_item"].filter do |cart_item_param|
      cart_item_param['quantity'] != '0'
    end
  end
end
