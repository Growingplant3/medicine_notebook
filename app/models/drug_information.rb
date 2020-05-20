class DrugInformation < ApplicationRecord
  enum when_to_take: {}
  enum crush: { :as_it_is => false, :smash => true }
  enum shading: { :light => false, :dark => true }
  enum one_dose_package: { :tablet => false, :pouch => true }
  enum tablet_color: { :red => 0, :yellow => 1, :green => 2, :blue => 3 }
  belongs_to :medicine_notebook_record
end