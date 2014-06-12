class SessionsController < ApplicationController
 def new
  end

  def create
   user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
     if user.admin==true
     	redirect_to admin_path
       else
     	redirect_to student_path
     end
    end
      
   end
  
  def destroy
  
  end
end
