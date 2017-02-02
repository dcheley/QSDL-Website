class User < ApplicationRecord
  has_secure_password
  has_many :teams
  has_many :bars

  validates :password, length: { minimum: 6 }, on: :edit
end
