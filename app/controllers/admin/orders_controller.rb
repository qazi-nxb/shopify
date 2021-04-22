class Admin::OrdersController < Admin::BaseController

  def index
    @orders = Order.paginate(page: params[:page], per_page:3)
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    order = Order.find(params[:id])
    if order.destroy
      flash[:success]= "user deleted successfully"
      redirect_to admin_orders_path

    end
  end
end
