class User < ActiveRecord::Base
	has_secure_password
	has_many :semesters
	validates :email, :first_name, :last_name, presence: true
	validates :password, { length: { minimum: 6 } }

	def admin?
		self.role == 'admin'
	end
	
end