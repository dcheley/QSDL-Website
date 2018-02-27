class Team < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  enum division: { Premier: 0, A:, 1, B_East: 2, B_West: 3, C: 4 } 

  belongs_to :bar

  validates :name, :division, :url, presence: true
end
