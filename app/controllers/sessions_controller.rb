class SessionsController < ApplicationController
  def index

  end
  
  def new

  end

  # def create
  #   user = User.find_by_email(params[:email])
  #   if user && user.authenticate(params[:password])
  #     session[:user_id] = user.id
  #     redirect_to root_path, :notice => "Hello, #{user.name}!"
  #   else
  #     flash.now.alert = "Invalid email or password"
  #     render "new"
  #   end
  # end

  # def destroy
  #  session[:user_id]= nil
  #  redirect_to root_path, :notice => "You are logged out."
  # end

end