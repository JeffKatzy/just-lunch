class InvitationsController < ApplicationController
	def show
    # binding.pry
    # change to current user later if necessary
    @user = User.find(params[:user_id])
    @invitation = Invitation.find_by(id: params[:id])
    if @invitation
      render 'show'
    else
      redirect_to user_path(@user), :notice => "Sorry! No invitation today."
    end
	end

	def new

	end

	def create

	end

	def destroy
		
	end

end
