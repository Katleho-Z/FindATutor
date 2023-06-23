class Skill < ApplicationRecord
  belongs_to :session
  has_many :tutor_skills
  has_many :tutors, through: :tutor_skills
  has_many :student_skills
  has_many :students, through: :student_skills

  validates :name, presence: true

end
