class Post < ApplicationRecord
  belongs_to :team

  validates :author, :title, :comment, presence: true
  validates :comment, length: { maximum: 500 }
end
