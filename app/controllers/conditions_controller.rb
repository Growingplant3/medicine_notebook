class ConditionsController < ApplicationController
  def index
    @conditions = current_user.conditions
    @chart_map = {"systolic_blood_pressure" => [], "diastolic_blood_pressure" => [], "pulse" => [], "blood_sugar" => []}
    @conditions.each do |condition|
      @chart_map["systolic_blood_pressure"].push([condition.updated_at.strftime('%Y/%m/%d %H:%M:%S'), condition.systolic_blood_pressure])
      @chart_map["diastolic_blood_pressure"].push([condition.updated_at.strftime('%Y/%m/%d %H:%M:%S'), condition.diastolic_blood_pressure])
      @chart_map["pulse"].push([condition.updated_at.strftime('%Y/%m/%d %H:%M:%S'), condition.pulse])
      @chart_map["blood_sugar"].push([condition.updated_at.strftime('%Y/%m/%d %H:%M:%S'), condition.blood_sugar])
    end
  end

  def edit
  end

  def create
    @condition = Condition.new(condition_params)
    @condition.user_id = current_user.id
    @condition.record_time = Time.now
    if @condition.save
      redirect_to action: :index
    else
      redirect_to action: :edit
    end
  end

  private
  def condition_params
    params.permit(:systolic_blood_pressure,:diastolic_blood_pressure,:pulse,:blood_sugar,:attached_comment)
  end
end
