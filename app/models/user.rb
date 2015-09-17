class User < ActiveRecord::Base
	before_save { email.downcase! }
	has_many :questions
	has_many :answers

	validates :name, presence: true, length: { maximum: 20 }
	validates :email, presence: true, length: { maximum: 50 }, uniqueness: true

	has_secure_password
	validates :password, length: { minimum: 4 }, allow_blank: true

	def User.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
		BCrypt::Password.create(string, cost: cost)
	end
end
