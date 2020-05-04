class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # ログイン済ユーザー/薬局のみにアクセスを許可する
  #before_action :authenticate_user!
  #before_action :authenticate_pharmacy!

  # deviseコントローラーにストロングパラメータを追加する          
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    # サインアップ時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # アカウント編集の時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :postcode, :prefecture_code, :address_city, :address_street, :address_building, :telephone_number, :age, :sex, :body_weight,:blood_types, :side_effect, :allergy, :sick, :operation, :remarks, :opinion])
  end

end