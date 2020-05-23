class MedicineNotebookRecordsController < ApplicationController
  before_action :authenticate_pharmacy!, only: [:search]
  def new
    @user = User.find(params[:id])
    @medicine_notebook_record = MedicineNotebookRecord.new(user_id: @user.id,pharmacy_id: current_pharmacy.id)
    @drug_information = @medicine_notebook_record.drug_informations.build
    @drug_information.how_to_takes.build
    redirect_to root_path unless pharmacy_signed_in?
    #redirect_to root_path unless @user == current_user || pharmacy_signed_in?
  end

  def edit
  end
  
  def create
    @medicine_notebook_record.save(params)
    show_path
  end

  def show
  end

  def search
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  def select
  end
end