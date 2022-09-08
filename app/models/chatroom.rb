class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :flat_owner, class_name: "User"
  belongs_to :pet_sitter, class_name: "User"
  belongs_to :booking
end
