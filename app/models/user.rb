class User < ApplicationRecord
  # Associations

 has_many :received_friend_requests, dependent: :destroy

 has_many :sent_friend_requests, dependent: :destroy

 has_many :comments, dependent: :destroy

 has_many :likes, dependent: :destroy

 has_many :senders, through: :recipient, source: :sender

 has_many :recipients, through: :sent_friend_requests, source: :recipient

 has_many :comment_photos, through: :comments, source: :comment_photo

  # Validations

  validates :name, presence: { message: 'name must be present'}

end
