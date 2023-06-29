class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :sender, polymorphic: true
end
