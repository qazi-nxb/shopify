class Admin::UsersController < Admin::BaseController
  def index
    @users = User.paginate(page: params[:page], per_page:3)
  end
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Updated successfully"
      redirect_to admin_user_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    user = User.find(params[:id])
    if user.destroy
      flash[:success]= "user deleted successfully"
      redirect_to admin_users_path

    end

  end

  private
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end

end

