class DrugInformation < ApplicationRecord
  # w: wake_up, m: morning, a: afternoon, e: evening, n: night 
  enum when_to_take: { :m => 0, :a => 1, :e => 2, :n => 3, :w => 4, :ma => 5, :me => 6, :mn => 7, :mae => 8 }
  enum crush: { :as_it_is => false, :smash => true }
  enum shading: { :light => false, :dark => true }
  enum one_dose_package: { :tablet => false, :pouch => true }
  enum tablet_color: { :red => 0, :yellow => 1, :green => 2, :blue => 3 }
  belongs_to :medicine_notebook_record
end