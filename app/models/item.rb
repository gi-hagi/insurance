class Item < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true
  validates :concept, presence: true
  validates :feature, presence: true
end
