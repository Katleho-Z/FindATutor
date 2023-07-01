class Skill < ApplicationRecord
  has_many :tutor_skills
  has_many :tutors, through: :tutor_skills
  has_many :student_skills
  has_many :students, through: :student_skills
  has_many :sessions
  validates :name, presence: true, uniqueness: true

  has_many :blogs

end
