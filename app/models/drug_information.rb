class DrugInformation < ApplicationRecord
  enum drug_name: { :amlodipine_2_5 => 0,
  :amlodipine_5 => 1,
  :rosuvastatin_2_5 => 2,
  :rosuvastatin_5 => 3,  
  }
  enum medical_effect: { :antihypertensive => 0, :lipid_abnormalities => 1}
  enum crush: { :as_it_is => false, :smash => true }
  enum shading: { :light => false, :dark => true }
  enum one_dose_package: { :tablet => false, :pouch => true }
  #enum tablet_color: { :red => 0, :yellow => 1, :green => 2, :blue => 3 }
  has_many :how_to_takes
  accepts_nested_attributes_for :how_to_takes, allow_destroy: true
  belongs_to :medicine_notebook_record
end