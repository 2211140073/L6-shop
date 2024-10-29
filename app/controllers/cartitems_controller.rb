class CartitemsController < ApplicationController
  def new
    @cartitem = Cartitem.new
  end

  def create
    c = Cartitem.new(
      product_id: params[:cartitem][:product_id],
      cart_id: current_cart.id,
      qty: params[:cartitem][:qty]
    )
    c.save
    redirect_to root_path
  end
  def destroy
      Cartitem.find(params[:id]).destroy
      redirect_to cart_path(current_cart.id)
  end
end

