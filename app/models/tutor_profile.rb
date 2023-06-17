class TutorProfile < ApplicationRecord
  belongs_to :user
  belongs_to :student_reviews
end
