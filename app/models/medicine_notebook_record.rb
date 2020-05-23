class MedicineNotebookRecord < ApplicationRecord
  belongs_to :user
  belongs_to :pharmacy
  has_many :drug_informations
  accepts_nested_attributes_for :drug_informations, allow_destroy: true
end