class User < ApplicationRecord
  has_many :teams
  has_many :bars
end
