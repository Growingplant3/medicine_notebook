class CreateDrugInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :drug_informations do |t|
      t.integer :medicine_notebook_record_id
      t.integer :drug_name
      t.float :daily_dose
      t.integer :prescription_days
      t.integer :medical_effect
      t.boolean :crush
      t.boolean :shading
      t.boolean :one_dose_package
      t.string :remaining_medicine, default: 0
      t.string :attention
      t.integer :tablet_color

      t.timestamps
    end
  end
end