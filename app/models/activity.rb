class Activity < ApplicationRecord
  enum business: { :open => false, :close => true }
  enum week_day: { :monday => 0, :tuesday => 1, :wednesday => 2, :thursday => 3, :friday => 4, :saturday => 5, :sunday => 6 }
  belongs_to :pharmacy
end
