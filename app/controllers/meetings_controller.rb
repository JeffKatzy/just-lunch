class MeetingsController < ApplicationController
  def index
    # binding.pry
    # @meetings = Meeting.where(user_id: params[:user_id])
    # @meetings = User.find(params[:user_id]).meetings
    # Meeting.joins(guests: [{invitations: :user}]).where(user_id: params[:user_id])
    # @meetings = Meeting.select('meetings.*').joins(guests: {invitation: :user}).group('id').where(user_id = params[:id])
    @user = User.find(params[:user_id])
    @meetings = @user.meetings
  end

  

  def show

  end
end