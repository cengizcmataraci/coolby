class Review < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 10 }
  belongs_to :user, optional: true
  # has_rich_text :content
end
