class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :init

  private
  def init
    @prefectures = PrefectureType.all
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) << :instructor_first_name
    devise_parameter_sanitizer.for(:sign_in) << :instructor_last_name
    devise_parameter_sanitizer.for(:sign_in) << :tel
    devise_parameter_sanitizer.for(:sign_in) << :prefecture_type_id

    devise_parameter_sanitizer.for(:sign_up) << :instructor_first_name
    devise_parameter_sanitizer.for(:sign_up) << :instructor_last_name
    devise_parameter_sanitizer.for(:sign_up) << :tel
    devise_parameter_sanitizer.for(:sign_up) << :prefecture_type_id


    devise_parameter_sanitizer.for(:account_update) << :instructor_first_name
    devise_parameter_sanitizer.for(:account_update) << :instructor_last_name
    devise_parameter_sanitizer.for(:account_update) << :tel
    devise_parameter_sanitizer.for(:account_update) << :prefecture_type_id
  end
end
