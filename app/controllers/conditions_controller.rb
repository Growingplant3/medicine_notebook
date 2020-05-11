class ConditionsController < ApplicationController
  def condition
    @conditions = current_user.conditions
  end

  def create
    @condition = condition.new(condition_params)
    @condition.user_id = current_user.id
    @condition.condition_record_time = Time.now
    respond_to do |format|
      if @condition.save
        format.html { redirect_to condition_path, notice: '正しく記録されました' }
      else
        format.html { render :create }
      end
    end
  end

  Private
  def condition_params
    params.require(:condition).permit(:user_id,:record_time,systolic_blood_pressure,:diastolic_blood_pressure,:pulse,:blood_sugar,:attached_comment)
  end
end
