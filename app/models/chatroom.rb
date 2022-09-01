class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :flat_owner, class_name: "User"
  belongs_to :pet_sitter, class_name: "User"
end
