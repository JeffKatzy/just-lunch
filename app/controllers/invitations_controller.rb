class InvitationsController < ApplicationController
	def index
    
  end

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
    Invitation.create_invitations
    redirect_to invitations_path
	end

	def destroy
		
	end

end
