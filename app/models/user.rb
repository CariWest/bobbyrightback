class User < ActiveRecord::Base
  validates :username, :name, :password_digest, :email, presence: true
  validates :username, :email, uniqueness: true

  has_secure_password
end
