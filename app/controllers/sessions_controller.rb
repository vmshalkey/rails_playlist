class SessionsController < ApplicationController
  def new
  end

  def create
  	logged_in_user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
    	if logged_in_user != false

            #right way of adding values to session
    		session[:user] = {email: logged_in_user[:email], name: logged_in_user[:name], id: logged_in_user[:id], status: true }

            #right way of using the redirect function
    		redirect_to '/users/'+logged_in_user[:id].to_s

    	else

    	end
  end
end
