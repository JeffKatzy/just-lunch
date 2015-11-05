class InvitationsController < ApplicationController
	def index
    @user = User.find(params[:user_id])
    @invitations = @user.invitations
  end

  def show
    # binding.pry
    # change to current user later if necessary
    @user = User.find(params[:user_id])
    @invitation = Invitation.find_by(id: params[:id])
    @meeting = @invitation.meeting
    @restaurant = @invitation.meeting.restaurant
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
    redirect_to admin_path
	end

	def destroy
		
	end

  def update
    invitation = Invitation.find(params[:id])
    invitation.change_status(params[:status])
    redirect_to user_path(params[:user_id])
  end

  def admin

  end

end
