class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :categories, :brands
  before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
	   devise_parameter_sanitizer.permit(:sign_up, keys: [:role, :name])
	   devise_parameter_sanitizer.permit(:account_update, keys: [:role, :name])
	end

  before_action :categories, :brands

  def categories
  	@categories = Category.order(:name)
  end

  def brands
  	@brands = Product.pluck(:brand).sort.uniq
  end

  def all_users
    @users = User.all
  end

  def edit_user
    @users = User.all
  end

end
