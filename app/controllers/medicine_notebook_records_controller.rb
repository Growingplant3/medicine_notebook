class MedicineNotebookRecordsController < ApplicationController
  def new
    redirect_to root_path unless pharmacy_signed_in?
    @user = User.find(params[:id])
    @medicine_notebook_record = MedicineNotebookRecord.new
    @drug_information = @medicine_notebook_record.drug_informations.build
    @drug_information.how_to_takes.build
  end

  def search
    redirect_to root_path unless pharmacy_signed_in?
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  def create
    a = MedicineNotebookRecord.new(medicine_notebook_record_params)
    a.user_id = params[:id]
    a.pharmacy_id = current_pharmacy.id
    a.save
    redirect_to medicine_notebook_show_path(params[:id])
  end

  def show
    redirect_to root_path unless pharmacy_signed_in?
    @user = User.find(params[:id])
    @all_records = @user.medicine_notebook_records.order(created_at: :desc).page(params[:page]).per(1)
    @select_id = 0
  end

  def edit
    redirect_to root_path unless pharmacy_signed_in?
    @user = User.find(params[:id])
    @medicine_notebook_record = MedicineNotebookRecord.find(params[:medicine_notebook_id])
  end

  def update
    @medicine_notebook_record = MedicineNotebookRecord.find(params[:medicine_notebook_id])
    @medicine_notebook_record.update(medicine_notebook_record_params)
    redirect_to medicine_notebook_show_path(params[:id])
  end

  def destroy
    @medicine_notebook_record = MedicineNotebookRecord.find(params[:medicine_notebook_id])
    @medicine_notebook_record.destroy
    redirect_to medicine_notebook_show_path(params[:id])
  end

  private
  def medicine_notebook_record_params
    params.require(:medicine_notebook_record).permit(:date_of_issue, :date_of_dispensing, :medical_institution, :doctor_name, :attached_comment,
     drug_informations_attributes: [:id, :user_id, :pharmacy_id, :drug_name, :daily_dose, :prescription_days, :medical_effect, :crush, :shading, :one_dose_package, :remaining_medicine, :attention, :_destroy,
      how_to_takes_attributes: [:id, :number_of_doses, :when_to_take, :_destroy]])
  end
end