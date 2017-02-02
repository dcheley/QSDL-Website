class Bar < ApplicationRecord
  belongs_to :user

  validates :name, :address, :phone, :url, presence: true
end
