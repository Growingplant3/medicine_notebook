class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum sex: { :other_sex => 0, :male => 1 , :female => 2 }
  enum blood_types: { :type_x => 0 , :type_a => 1 , :type_b => 2 , :type_o => 3 , :type_ab => 4 }
end