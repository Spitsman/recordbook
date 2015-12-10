class User < ActiveRecord::Base
	has_secure_password
	has_many :semesters

	def admin?
		self.role == 'admin'
	end
	
end