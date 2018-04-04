class User < ApplicationRecord
  has_many :articles

  before_save { self.email = email.downcase }

  validates :username,
    presence: true,
    uniqueness: { case_sensitive: false },
    length: { minimum: 3 }
  validates :email, presence: true,
    length: { minimum: 5 },
    uniqueness: { case_sensitive: false },
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  has_secure_password
end
