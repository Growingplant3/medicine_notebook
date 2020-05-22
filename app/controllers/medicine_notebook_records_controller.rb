class MedicineNotebookRecordsController < ApplicationController
  before_action :authenticate_pharmacy!, only: [:search]
  def new
    @user = User.find(params[:id])
    if @user == current_user || pharmacy_signed_in?
      puts params[:id]
      puts @user == current_user
      puts "-----"
      puts pharmacy_signed_in?
      puts "ニューパスへ"
      medicine_notebook_new_path
    else
      puts params[:id]
      puts @user == current_user
      puts "-----"
      puts pharmacy_signed_in?
      puts "ルートパスへ"
      root_path
    end
  end

  def edit
  end
  
  def create
  end

  def search
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  def select
    #@user = User.find(params[:id])
    #@multiple_records = @user.medicine_notebook_records
    #@multiple_records.each do |single_record|
    #  @all_medicines << single_record.drug_informations
    #end
  end
end