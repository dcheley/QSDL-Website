class User < ApplicationRecord
  has_many :news
  has_secure_password

  validates :password, length: { minimum: 6 }, on: :edit
end
