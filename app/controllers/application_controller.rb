class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :postcode, :prefecture_code, :address_city, :address_street, :address_building, :telephone_number, :age, :sex, :body_weight,:blood_types, :side_effect, :allergy, :sick, :operation, :remarks, :opinion])
  end
end