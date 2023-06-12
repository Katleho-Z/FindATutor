class TutorSkill < ApplicationRecord
  belongs_to :tutor
  belongs_to :skill

  validates :level, presence: true

end
