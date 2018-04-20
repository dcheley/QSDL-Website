class Team < ApplicationRecord
  has_many :posts
  belongs_to :bar

  validates :name, :division, :url, presence: true
end
