class Team < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  has_many :posts
  belongs_to :bar

  validates :name, :division, :url, presence: true
end
