class AddStatusToPharmacy < ActiveRecord::Migration[6.0]
  def change
    add_column :pharmacies, :name, :string
    add_column :pharmacies, :postcode, :string
    add_column :pharmacies, :prefecture_code, :string
    add_column :pharmacies, :address_city, :string
    add_column :pharmacies, :address_street, :string
    add_column :pharmacies, :address_building, :string
    add_column :pharmacies, :normal_telephone_number, :string
    add_column :pharmacies, :abnormal_telephone_number, :string
    add_column :pharmacies, :remarks, :text
    add_column :pharmacies, :opinion, :text
  end
end