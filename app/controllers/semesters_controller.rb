class SemestersController < ApplicationController

	def new
	end

	def create
		if resouce_semester.save
			resource_user.semesters.push resouce_semester
			redirect_to user_path
		else
			render :new
		end
	end

	def destroy
		Semester.find_by(user_id: params[:id], number: params[:number]).destroy
		redirect_to user_path
	end

	private

	def resouce_semester
		@resouce_semester ||= Semester.new(semester_params)
	end

	def semester_params
		params.require(:semester).permit(:number, :toi, :discrete_math, :linal, :matlog, :ptms, :differential_equations)
	end

end