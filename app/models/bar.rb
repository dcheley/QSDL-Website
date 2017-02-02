class Bar < ApplicationRecord
  validates :name, :address, :phone, :url, presence: true
end
