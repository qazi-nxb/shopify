class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @category_products = Product.tagged_with(@category.title, :any => true)
  end

  def show_subcategory
    #debugger
    #@category = Category.find(params[:format])
    @category = Category.tagged_with(params[:format])
    @category = @category.first
    @subcategory_products = Product.tagged_with("#{@category.title} #{params["format"]}", :all => true)
    #debugger
  end
end
