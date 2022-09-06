class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chatroom_as_flat_owner, class_name: "Chatroom", foreign_key: :flat_owner_id, dependent: :destroy
  has_many :chatroom_as_pet_sitter, class_name: "Chatroom", foreign_key: :pet_sitter_id, dependent: :destroy
  has_many :message, dependent: :destroy
  has_many :offer, foreign_key: :user_id, dependent: :destroy
  has_many :bookings, foreign_key: :user_id, dependent: :destroy
  has_one_attached :photo
end
