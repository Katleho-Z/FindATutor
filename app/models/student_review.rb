class StudentReview < ApplicationRecord
  belongs_to :session
  belongs_to :tutor

  validates :rating, presence: true
  validates :comment, presence: true
end
