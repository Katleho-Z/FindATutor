class Session < ApplicationRecord
  belongs_to :tutor
  belongs_to :student
  belongs_to :skill
has_many :skills
  # validates :date, presence: true
  # validates :time, presence: true
  # validates :amount_offered, presence: true
  # validates :status, presence: true
  # validates :skill_id, presence: true
end
