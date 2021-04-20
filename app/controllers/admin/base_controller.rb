class Admin::BaseController < ActionController::Base
  before_action :authenticate_user!
  before_action :ensure_admin

  layout 'admin'

  protected

  def ensure_admin
    redirect_to '/' unless current_user.role
  end
end
