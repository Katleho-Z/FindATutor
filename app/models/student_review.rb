class StudentReview < ApplicationRecord
  belongs_to :session
  belongs_to :tutor
  belongs_to :tutor_profile

  validates :rating, presence: true
  validates :comment, presence: true
end
