class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @category_products = Product.tagged_with(@category.title, :any => true)
  end

  def show_subcategory
    #@category = Category.find(params[:format])
    @category = Category.tagged_with(params[:format])
    @category = @category.first
    @subcategory_products = Product.tagged_with(params["format"], :any => true)
    #debugger
  end
end
