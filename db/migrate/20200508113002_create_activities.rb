class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.integer :pharmacy_id
      t.integer :week_day
      t.boolean :business
      t.time :open
      t.time :close

      t.timestamps
    end
  end
end