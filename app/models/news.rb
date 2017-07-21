class News < ApplicationRecord
  validates :title, presence: true
  validates :paragraph_one, presence: true
end
