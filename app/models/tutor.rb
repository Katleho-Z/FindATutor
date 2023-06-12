class Tutor < ApplicationRecord
  belongs_to :user
  has_many :tutor_skills
  has_many :sessions
  has_many :student_reviews
  has_many :skills, through: :tutor_skills

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :profile_image, presence: true
  validates :availability, presence: true
  validates :user_id, presence: true
  validates :location, presence: true
  validates :email_address, presence: true
  validates :bio, presence: true
end
