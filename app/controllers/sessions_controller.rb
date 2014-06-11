class SessionsController < ApplicationController
 def new
  end

  def create
   user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
     if user.admin==true
         redirect_to addmarks_path
       else
      redirect_to marks_path
     end
    end
end
      
   
  
  def destroy
    redirect_to root_path
  end
end