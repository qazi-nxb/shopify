class WelcomeController < ApplicationController

  def index
    if !current_user
      redirect_to new_user_session_path
    end
    @products = Product.paginate(page: params[:page], per_page:3)

  end


end
