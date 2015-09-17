class User < ActiveRecord::Base
	before_save { email.downcase! }
	has_many :questions
	has_many :answers

	validates :name, presence: true, length: { maximum: 20 }
	validates :email, presence: true, length: { maximum: 50 }, uniqueness: true

	has_secure_password
	validates :password, length: { minimum: 4 }
end
