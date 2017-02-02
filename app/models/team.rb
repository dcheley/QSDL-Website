class Team < ApplicationRecord
  validates :name, :division, :url, presence: true
end
