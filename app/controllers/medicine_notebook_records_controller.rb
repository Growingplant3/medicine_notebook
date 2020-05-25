class MedicineNotebookRecordsController < ApplicationController
  before_action :authenticate_pharmacy!, only: [:search]
  def new
    @user = User.find(params[:id])
    @medicine_notebook_record = MedicineNotebookRecord.new
    @drug_information = @medicine_notebook_record.drug_informations.build
    @drug_information.how_to_takes.build
    redirect_to root_path unless pharmacy_signed_in?
    #redirect_to root_path unless @user == current_user || pharmacy_signed_in?
  end

  def edit
  end

  def create
    a = MedicineNotebookRecord.new(medicine_notebook_record_params)
    a.user_id = params[:id]
    a.pharmacy_id = current_pharmacy.id
    a.save
    redirect_to medicine_notebook_show_path
  end

  def show
    
  end

  def search
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  def select
  end

  private
  def medicine_notebook_record_params
    params.require(:medicine_notebook_record).permit(:date_of_issue, :date_of_dispensing, :medical_institution, :doctor_name, :attached_comment,
     drug_informations_attributes: [:user_id, :pharmacy_id, :drug_name, :daily_dose, :prescription_days, :medical_effect, :crush, :shading, :one_dose_package, :attention, :_destroy,
      how_to_takes_attributes: [:number_of_doses, :when_to_take, :_destroy]])
  end
end