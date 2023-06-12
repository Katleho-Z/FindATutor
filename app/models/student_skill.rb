class StudentSkill < ApplicationRecord
  belongs_to :student
  belongs_to :skill

  validates :level, presence: true
end
