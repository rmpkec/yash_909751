class Photo < ApplicationRecord
  # Associations

 has_many :comments, dependent: :destroy

 has_many :likes, dependent: :destroy

 has_many :comment_users, through: :comments, source: :comment_user

  # Validations

end
