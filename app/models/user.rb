class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #enum sex: { :other-sex => 0, :male => 1 , :female => 2 }
  #enum blood_types: { :type-x => 0 , :type-a => 1 , :type-b => 2 , :type-o => 3 , :type-ab => 4 }
end