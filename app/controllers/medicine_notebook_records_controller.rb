class MedicineNotebookRecordsController < ApplicationController
  before_action :authenticate_pharmacy!, only: [:select,:reference]
  def new
  end
  
  def select
    @user = User.all
  end

  def reference
    @q = User.ransack(params[:q])
    @Users = @q.result(distinct: true)
  end
end