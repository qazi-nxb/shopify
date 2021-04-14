class CartController < ApplicationController
  def index

  end

  def add_to_card
    session[:cart] = session[:cart] || []
    session[:cart] << {product_id: params[:product][:product_id], qty: params[:product][:qty]}

    redirect_to root_path

  end
end
