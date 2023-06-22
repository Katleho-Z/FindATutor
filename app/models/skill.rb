class Skill < ApplicationRecord
  # belongs_to :session
  belongs_to :session
  has_many :tutor_skills
  has_many :student_skills

  validates :name, presence: true

end
