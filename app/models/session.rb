class Session < ApplicationRecord
  belongs_to :tutor
  belongs_to :student

  validates :date, presence: true
  validates :time, presence: true
  validates :amount_offered, presence: true
  validates :status, presence: true
end
