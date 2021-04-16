class PaymentsController < ApplicationController
  before_action :authenticate_user!
  def index
    #Order.create
    #session[:cart].each do |_, hsh|
    #product = Product.find(hsh["product_id"])
    #order.linitems.create()
    #end
 end


  def cash_on_delivery

  end

  def credit_cart_payment

  end
end
