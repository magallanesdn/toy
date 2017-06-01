class User < ApplicationRecord
  before_save {self.email = email.downcase}
  has_many :microposts
  validates :name, presence: true, length: { maximum: 9}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 49}, 
                                    format: {with: VALID_EMAIL_REGEX},
                                    uniqueness: true
                              
  has_secure_password
  
  validates :password, presence: true, length: { minimum: 6 }
end
