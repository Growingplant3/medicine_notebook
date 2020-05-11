class CreateConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :conditions do |t|
      t.integer :user_id
      t.time :condition_record_time
      t.integer :morning_systolic_blood_pressure
      t.integer :morning_diastolic_blood_pressure
      t.integer :afternoon_systolic_blood_pressure
      t.integer :afternoon_diastolic_blood_pressure
      t.integer :evening_systolic_blood_pressure
      t.integer :evening_diastolic_blood_pressure
      t.integer :sleep_systolic_blood_pressure
      t.integer :sleep_diastolic_blood_pressure
      t.integer :morning_pulse
      t.integer :afternoon_pulse
      t.integer :evening_pulse
      t.integer :sleep_pulse
      t.integer :morning_blood_sugar
      t.integer :afternoon_blood_sugar
      t.integer :evening_blood_sugar
      t.integer :sleep_blood_sugar
      t.text :attached_comment

      t.timestamps
    end
  end
end
