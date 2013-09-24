class ApplicationController < ActionController::Base
	#before_filter :after_sign_up_path_for

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :institution_id, :password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :provider, :uid, :topic_id, :fname, :lname, :facebookurl, :twitterurl, :linkedinurl) }
  end

  def after_sign_in_path_for(resource)
  	root_path(resource)
  end

end
