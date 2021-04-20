class WelcomeController < ApplicationController

  def index
    if !current_user
      redirect_to new_user_session_path
    end
    @products = Product.all

  end


end
