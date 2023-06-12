class TutorReview < ApplicationRecord
  belongs_to :session
  belongs_to :student

  validates :rating, presence: true
  validates :comment, presence: true

end
