class Skill < ApplicationRecord
  has_many :tutor_skills
  has_many :student_skills

  validates :name, presence: true

end
