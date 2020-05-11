class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum sex: { :other_sex => 0, :male => 1 , :female => 2 }
  enum blood_types: { :type_x => 0 , :type_a => 1 , :type_b => 2 , :type_o => 3 , :type_ab => 4 }

  include JpPrefecture
  jp_prefecture :prefecture_code

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end

  has_many :conditions, dependent: :delete_all
  accepts_nested_attributes_for :conditions, allow_destroy: true
end