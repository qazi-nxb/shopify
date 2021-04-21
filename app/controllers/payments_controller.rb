class PaymentsController < ApplicationController
  before_action :authenticate_user!
  def index
    #Order.create
    #session[:cart].each do |_, hsh|
    #product = Product.find(hsh["product_id"])
    #order.linitems.create()
    #end

    order = Order.create(:user_id => current_user.id, :status => "pending")
    session[:cart].each do |_,hsh|
      product = Product.find(hsh["product_id"])
      lineitem = order.line_items.create(:per_price => product.price, :quantity => hsh["qty"], :total_price => session["sum"], :product_id => product.id, :order_id => order.id)

    end
 end


  def cash_on_delivery
    @address = Address.new
  end

  def credit_cart_payment

  end
end
