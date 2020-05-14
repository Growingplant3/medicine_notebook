class ConditionsController < ApplicationController
  def index
    @conditions = current_user.conditions
  end

  def edit
  end

  def create
    @condition = Condition.new(condition_params)
    @condition.user_id = current_user.id
    @condition.record_time = Time.now
    if @condition.save
      redirect_to controller: :conditions, action: :index
      puts '正しく記録されました'
    else
      redirect_to controller: 'conditions', action: 'index'
      puts '正しく保存されませんでした。'
    end
  end

  private
  def condition_params
    params.permit(:systolic_blood_pressure,:diastolic_blood_pressure,:pulse,:blood_sugar,:attached_comment)
  end
end
