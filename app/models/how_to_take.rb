class HowToTake < ApplicationRecord
  enum when_to_take: { :wake_up => 0, :before_morning_meal => 1, :after_morning_meal => 2, :between_morning_meal => 3, :before_lunch => 4, :after_lunch => 5, :between_lunch => 6, :before_dinner => 7, :after_dinner => 8, :between_dinner => 9, :night => 10}
  belongs_to :drug_information
end
