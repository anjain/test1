class SessionsController < ApplicationController
 def new
  end

  def create
   user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        sign_in user
       if user.admin==true
         flash[:notice] = 'Welcome ' + user.name
         redirect_to addmarks_path
       
       else user.admin==nil
         flash[:notice] = 'Welcome  ' + user.name
         redirect_to sresult_path
      
       end

        else
         flash[:error] = 'Unknown user. Please check your username and password.'
          redirect_to signin_path
    
    end
end
      
   
  
  def destroy
    sign_out
    flash[:notice] = 'Thanks for visiting'
    redirect_to root_path
  end

end