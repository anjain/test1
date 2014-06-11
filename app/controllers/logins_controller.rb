class LoginsController < ApplicationController
	def new
	end

	def create
		student = Student.find_by(email: params[:login][:email].downcase)
	    if student && student.authenticate(params[:login][:password]) && student.admin
	    	sign_in student
          redirect_to '/records/new'

	    elsif student && student.authenticate(params[:login][:password])
	    		
	       sign_in student
		   redirect_to student

	      else
	      flash[:error] = 'Invalid email/password combination' # Not quite right!
          render 'new'
	    end
	end

	def destroy
      sign_out
      redirect_to root_url
	end
end
