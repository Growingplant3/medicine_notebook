class MedicineNotebookRecordsController < ApplicationController
  before_action :authenticate_pharmacy!, only: [:reference,:select]
  def new
  end

  def search
    @q = User.ransack(params[:q])
    @Users = @q.result(distinct: true)
  end

  def select
    @user = User.find(params[:id])
    @multiple_records = @user.medicine_notebook_records
    @multiple_records.each do |single_record|
      @all_medicines << single_record.drug_informations
    end
  end
end