class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
  has_many :microposts, dependent: :destroy

  default_scope -> { order(created_at: :desc) }
  has_secure_password
end
