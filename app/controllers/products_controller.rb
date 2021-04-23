class ProductsController < ApplicationController
  def search

  end
  def tagged

    # debugger
    # if params[:tag].present?
    #   @admin_products = Product.tagged_with(params[:tag])
    # else
    #   @admin_products = Product.all
    # end
    if params[:tag].present?
      @products = Product.tagged_with(params[:tag], :any => true)

      if @products && @products.count!=0
        respond_to do |format|
          format.js { render partial: 'products/result'}
        end
      else
        respond_to do |format|
          flash.now[:alert] = "No tags found"
          format.js { render partial: 'products/result'}
        end
      end
    else
      respond_to do |format|
        flash.now[:alert] = "please enter a tag name to search"
        format.js { render partial: 'products/result'}
      end
    end
  end
end
