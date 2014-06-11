class StudentsController < ApplicationController

	def new
		@student = Student.new
	end

	def show
		
		@student = Student.find(params[:id])

		@record = Record.find_by_email(@student.email)
		@recordall = Record.all
	end

	def create
	   @student = Student.new(student_params)
    if @student.save
      flash[:success] = "Welcome to the Result Card"
      sign_in @student
      redirect_to @student
    else
      render 'new'
    end
	end

	def index
	end

	private
	def student_params
      params.require(:student).permit(:name, :email, :password, :password_confirmation)
    end
end
