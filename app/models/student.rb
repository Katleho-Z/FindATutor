class Student < ApplicationRecord
  belongs_to :user
  has_many :sessions
  has_many :student_skills
  has_many :skills, through: :student_skills
  has_many :tutor_reviews
  has_many :chatrooms
  has_many :messages
  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :user_id, presence: true
  validates :phone_number, presence: true
  validates :bio, presence: true
end
