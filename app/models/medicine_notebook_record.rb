class MedicineNotebookRecord < ApplicationRecord
  belongs_to :user
  belongs_to :pharmacy
  has_many :drug_informations
end