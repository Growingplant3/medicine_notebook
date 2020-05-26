class DrugInformation < ApplicationRecord
  enum drug_name: { :amlodipine_2_5 => 0,
  :amlodipine_5 => 1,
  :rosuvastatin_2_5 => 2,
  :rosuvastatin_5 => 3,
  :xarelto_10 => 4,
  :xarelto_15 => 5,
  :eliquis_2_5 => 6,
  :eliquis_5 => 7,
  :e_keppra_250 => 8,
  :e_keppra_500 => 9,
  :artist_1_2_5 => 10,
  :artist_2_5 => 11,
  :artist_10 => 12,
  :artist_20 => 13,
  :olmetec_5 => 14,
  :olmetec_10 => 15,
  :olmetec_20 => 16,
  :olmetec_40 => 17,
  :ancaron_100 => 18,
  :lasix_10 => 19,
  :lasix_20 => 20,
  :lasix_40 => 21,
  :clarith_50 => 22,
  :kipres_chewable_5 => 23}
  enum medical_effect: { :anti_hypertensive => 0,
  :lipid_abnormalities => 1,
  :blood_flow_smoothly => 2,
  :arrhythmia => 3,
  :anti_epileptic_drug => 4,
  :heart_disease => 5,
  :anti_bacterial_drug => 6,
  :anti_allergic_drug => 7}
  enum crush: { :as_it_is => false, :smash => true }
  enum shading: { :light => false, :dark => true }
  enum one_dose_package: { :tablet => false, :pouch => true }
  #enum tablet_color: { :red => 0, :yellow => 1, :green => 2, :blue => 3 }
  has_many :how_to_takes
  accepts_nested_attributes_for :how_to_takes, allow_destroy: true
  belongs_to :medicine_notebook_record
end