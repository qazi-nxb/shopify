class ProductsController < ApplicationController
  def tagged

    if params[:tag].present?
      @products = Product.tagged_with(params[:tag], :any => true)
      @search_products = Product.search(params[:tag])
      if @products && @products.count!=0 || @search_products && @search_products.count!=0
        respond_to do |format|
          format.js { render partial: 'products/result'}
        end
      else
        respond_to do |format|
          flash.now[:alert] = "No results found with name '#{params[:tag]}'"
          format.js { render partial: 'products/result'}
        end
      end
    else
      @products = Product.all
      respond_to do |format|
        format.js { render partial: 'products/result'}
      end
    end
  end
end
