class CreateMedicineNotebookRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :medicine_notebook_records do |t|
      t.integer :user_id
      t.integer :pharmacy_id
      t.date :date_of_issue
      t.date :date_of_dispensing
      t.string :medical_institution
      t.string :doctor_name
      t.text :attached_comment

      t.timestamps
    end
  end
end