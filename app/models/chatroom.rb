class Chatroom < ApplicationRecord
  belongs_to :student
  belongs_to :tutor
  has_many :messages, dependent: :destroy
end
