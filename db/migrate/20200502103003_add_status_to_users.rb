class AddStatusToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :name, :string
    add_column :users, :postcode, :string
    add_column :users, :prefecture_code, :string
    add_column :users, :address_city, :string
    add_column :users, :address_street, :string
    add_column :users, :address_building, :string
    add_column :users, :telephone_number, :string
    add_column :users, :birthday, :date
    add_column :users, :age, :integer
    add_column :users, :sex, :integer, null: false, default: 0
    add_column :users, :body_weight, :integer
    add_column :users, :blood_types, :integer, null: false, default: 0
    add_column :users, :side_effect, :text
    add_column :users, :allergy, :text
    add_column :users, :sick, :text
    add_column :users, :operation, :text
    add_column :users, :remarks, :text
    add_column :users, :opinion, :text
  end
end