class CartItemsController < ApplicationController
  def index
    @cart_items = current_user.cart_items
  end

  def create
        @cart_item = CartItem.new(cart_item_params)
        @cart_item.user_id = current_user.id #誰のカートか紐付け
        @cart_items = current_user.cart_items.all
        @cart_items.each do |cart_item|
     if cart_item.product_id == @cart_item.product_id
        new_quantity = cart_item.quantity + @cart_item.quantity.to_i
        @cart_item.update_attribute(:quantity, new_quantity) #変更
        cart_item.delete #変更
     end
   end
        @cart_item.save
        redirect_to products_path
  end

  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(cart_item_params)
    redirect_to cart_items_path, notice: '数量変更しました'
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path, notice: '削除しました'
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity,:product_id,:user_id)
  end

end
