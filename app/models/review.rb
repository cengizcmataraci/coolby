class Review < ApplicationRecord
  has_many :comments
  belongs_to :user, optional: true
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 10 }
  # has_rich_text :content
end
