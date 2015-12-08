class UserPolicy # так применяется гем pundit

	attr_reader :user

  def initialize(user)
    @user = user
  end

	def show?
		@user.admin?
	end
	
end