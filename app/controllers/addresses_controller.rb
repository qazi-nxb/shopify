class AddressesController < ApplicationController
  def create
    address = Address.new(address_params)
    address.user = current_user
    if address.save
      order = address.user.orders.last
      order.status = "confirmed"
      order.save
      session[:cart] = nil
      flash[:notice] = "You order is confirmed, will be reach with in 2,3 days"
      redirect_to root_path
    else
      flash.now[:alert]= "An error occurred"
      render 'payments/cash_on_delivery'
    end

  end
  private
  def address_params
    params.require(:address).permit(:country, :state, :city, :zipcode, :address_1, :address_2, :phone)
  end
end
