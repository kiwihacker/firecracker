class AdminController < ApplicationController

  # just display the form and wait for user to
  # enter a name and password
  
  def login
    if request.post?
      user = User.authenticate(params[:username], params[:password])
      if user
        
        #Check for role
        assignment = Assignment.find_role_at_login(user.id, params[:publication_id])
        
        if assignment        
          session[:user_id] = user.id
          session[:role_id] = assignment.role_id
          session[:username] = user.username
          session[:email] = user.email
          session[:publication_id] = params[:publication_id]
          redirect_to("/dashboard")

        else
          flash[:notice] = "You are not assigned to this publication"
          #redirect_to("login")
        end    
      else
        flash[:notice] = "Invalid user/password combination"
      end
    end
  end
  

  
  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end
  
    
end