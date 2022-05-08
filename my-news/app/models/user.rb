class User < ApplicationRecord

  has_many :posts
  validates_associated :posts
  validates :login, :email, presence: true, length: {minimum: 3}


  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         jwt_revocation_strategy: JwtDenylist
end
