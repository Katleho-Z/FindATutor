class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :student
  has_one :tutor

  # def is_student?
  #   student.present?
  # end

  # def is_tutor?
  #   tutor.present?
  # end

  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
end
