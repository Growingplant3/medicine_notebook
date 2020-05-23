class CreateDrugInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :drug_informations do |t|
      t.integer :medicine_notebook_record_id
      t.string :drug_name
      t.integer :medical_effect
      t.float :daily_dose
      t.integer :prescription_days
      t.boolean :crush
      t.boolean :shading
      t.boolean :one_dose_package
      t.integer :tablet_color
      t.string :attention
      t.string :remaining_medicine, default: 0

      t.timestamps
    end
  end
end