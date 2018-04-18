class Post < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  belongs_to :team

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :author, :title, :comment, presence: true
  validates :comment, length: { maximum: 500 }
end
