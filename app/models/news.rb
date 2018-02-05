class News < ApplicationRecord
  validates :title, :paragraph_one, presence: true
end
