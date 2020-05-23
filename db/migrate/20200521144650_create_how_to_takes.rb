class CreateHowToTakes < ActiveRecord::Migration[6.0]
  def change
    create_table :how_to_takes do |t|
      t.integer :drug_information_id
      t.float :number_of_doses
      t.integer :when_to_take

      t.timestamps
    end
  end
end