class CategoriesController < ApplicationController
  def show
    category = Category.find(params[:id])
    @category_products = Product.tagged_with(category.title, :any => true)
  end
end
