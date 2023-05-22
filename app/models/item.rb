class Item < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  validates :title, presence: true
  validates :concept, presence: true
  validates :feature, presence: true

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
end
