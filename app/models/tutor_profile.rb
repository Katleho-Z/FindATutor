class TutorProfile < ApplicationRecord
  belongs_to :user
  has_many :student_reviews

  validates :bio, presence: true, length: { maximum: 300 }
  validates :skills, presence: true
  validates :location, presence: true
  validates :email, presence: true

end
