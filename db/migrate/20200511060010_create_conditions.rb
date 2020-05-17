class CreateConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :conditions do |t|
      t.integer :user_id
      t.date :record_time
      t.integer :systolic_blood_pressure
      t.integer :diastolic_blood_pressure
      t.integer :pulse
      t.integer :blood_sugar
      t.text :attached_comment

      t.timestamps
    end
  end
end
