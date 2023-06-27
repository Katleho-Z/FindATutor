class Tutor < ApplicationRecord
  belongs_to :user
  has_many :tutor_skills
  has_many :sessions
  has_many :blogs
  has_many :student_reviews
  has_many :skills, through: :tutor_skills
  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :availability, presence: true
  validates :user_id, presence: true
  validates :location, presence: true
  validates :email_address, presence: true
  validates :bio, presence: true

  include PgSearch::Model

  pg_search_scope :search_by_name,
                  against: %i[first_name last_name],
                  using: {
                    tsearch: { prefix: true }
                  }

  pg_search_scope :search_by_skill,
                  associated_against: {
                    skills: :name,
                    using: {
                      tsearch: { prefix: true }
                    }
                  }
end
