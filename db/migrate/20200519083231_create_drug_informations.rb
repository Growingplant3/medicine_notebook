class CreateDrugInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :drug_informations do |t|
      t.integer :medicine_notebook_record_id
      t.string :drug_name
      t.string :medical_effect
      t.float :daily_dose
      t.integer :number_of_doses
      t.integer :when_to_take
      t.integer :prescription_days
      t.boolean :crush
      t.boolean :shading
      t.boolean :one_dose_package
      t.integer :tablet_color
      t.string :attention
      t.string :remaining_medicine

      t.timestamps
    end
  end
end