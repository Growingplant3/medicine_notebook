class DrugInformation < ApplicationRecord
  # w: wake_up, m: morning, a: afternoon, e: evening, n: night 
  enum medical_effect: { :antihypertensive => 0, :lipid_abnormalities => 1}
  enum crush: { :as_it_is => false, :smash => true }
  enum shading: { :light => false, :dark => true }
  enum one_dose_package: { :tablet => false, :pouch => true }
  enum tablet_color: { :red => 0, :yellow => 1, :green => 2, :blue => 3 }
  has_many :how_to_takes
  belongs_to :medicine_notebook_record
end