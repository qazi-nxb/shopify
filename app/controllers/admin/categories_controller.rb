class Admin::CategoriesController < Admin::BaseController
  def index
    @admin_categories = Category.paginate(page: params[:page], per_page:3)
  end

  def show
    @admin_category = Category.find(params[:id])
  end

  def new
    @admin_category = Category.new
  end

  def create
    @admin_category = Category.new(admin_category_params)
    if @admin_category.save
      flash[:notice] = "Category added successfully"
      redirect_to admin_category_path(@admin_category)
    else
      flash[:alert] = "Something went wrong"
      render 'new'
    end
  end

  def edit
    @admin_category = Category.find(params[:id])
  end

  def update
    @admin_category = Category.find(params[:id])
    if @admin_category.update(admin_category_params)
      flash[:notice] = "Updated successfully"
      redirect_to admin_category_path(@admin_category)
    else
      flash.now[:alert] = "Something went Wrong"
      render 'edit'
    end
  end

  def destroy
    admin_category = Category.find(params[:id])
    if admin_category.destroy
      flash[:alert] = "Deleted Successfully"
      redirect_to admin_categories_path
    end
  end

  private
  def admin_category_params
    params.require(:category).permit(:title, :tag_list)
  end

end
