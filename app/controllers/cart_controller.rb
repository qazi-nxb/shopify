class CartController < ApplicationController
  before_action :authenticate_user!
  def index

  end

  def add_to_card
    session[:cart] = session[:cart] || {}
    session[:cart][params[:product][:product_id]] = {product_id: params[:product][:product_id], qty: params[:product][:qty]}

    redirect_to root_path

  end

  def destroy
    id = params[:id]
    session[:sum] = nil
    session[:cart].delete(id)
    redirect_to cart_index_path
  end
end
