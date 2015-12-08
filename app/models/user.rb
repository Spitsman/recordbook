class User < ActiveRecord::Base
	acts_as_authentic
	has_one :infopage, dependent: :destroy

	def admin?
		self.role == 'admin'
	end
end