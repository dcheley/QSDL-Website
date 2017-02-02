class Team < ApplicationRecord
  belongs_to :user

  validates :name, :division, :url, presence: true
end
