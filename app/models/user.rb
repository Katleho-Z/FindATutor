class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one :student
         has_one :tutor
         has_one :tutor_profile
         has_one :student_profile


         validates :email, presence: true
         validates :encrypted_password, presence: true
end
