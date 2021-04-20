class Admin::WelcomeController < Admin::BaseController

  def index
    redirect_to admin_products_path
  end
end
