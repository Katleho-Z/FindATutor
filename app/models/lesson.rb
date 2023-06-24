class Lesson < ApplicationRecord
  belongs_to :tutor
  belongs_to :student
  belongs_to :skill
  has_many :skills
end
