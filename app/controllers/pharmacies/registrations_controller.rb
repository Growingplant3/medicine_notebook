# frozen_string_literal: true

class Pharmacies::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  def show
  end

  def search
    @q = Pharmacy.ransack(params[:q])
    @pharmacies = @q.result(distinct: true)
  end

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  def edit
    if current_pharmacy.activities.count == 0
      for seven_days in 0..6 do
        current_pharmacy.activities.build(week_day: seven_days).save
      end
    end
  end

  # PUT /resource
  def update
    current_pharmacy.update(pharmacy_params)
    redirect_to pharmacies_show_path
  end

  # DELETE /resource
  def destroy
    current_pharmacy.destroy
    respond_to do |format|
      format.html { redirect_to new_pharmacy_registration_path, notice: t('pharmacy.registrations.destroy.pharmacy_destory') }
    end
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:email,:password,:password_confirmation,:current_password,:name,:postcode,:prefecture_code,:address_city,:address_street,:address_building,:normal_telephone_number,:abnormal_telephone_number,:remarks,:opinion,activities_attributes: [:id, :pharmacy_id, :week_day, :business, :open, :close]])
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    pharmacies_show_path
  end

  def after_update_path_for(resource)
    pharmacies_show_path
  end
  
  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  def pharmacy_params
    params.require(:pharmacy).permit(:name,:postcode,:prefecture_code,:address_city,:address_street,:address_building,:normal_telephone_number,:abnormal_telephone_number,:remarks,:opinion,:email,:password,:password_confirmation,:current_password,activities_attributes:[:id,:business,:open,:close])
  end
end