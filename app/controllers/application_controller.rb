class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :user_check

  protected

  def configure_permitted_parameters
    added_attrs = [ :email, :username, :password, :password_confirmation, :image ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end

  private

  # ログイン後のリダイレクト先
  def after_sign_in_path_for(resource_or_scope)
    posts_index_path(resource_or_scope)
  end

  # ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :admin_admin_user
      new_admin_admin_user_session_path
    else
      new_user_session_path
    end
  end

  def user_check
    if user_signed_in?
      @user = User.find_by(id: current_user.id)
    end
  end

end
