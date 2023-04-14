class Item < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :concept, presence: true
  validates :feature, presence: true
end
