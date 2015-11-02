class MeetingsController < ApplicationController
  def index
    binding.pry
    # @meetings = Meeting.where(user_id: params[:user_id])
    # @meetings = User.find(params[:user_id]).meetings
    Meeting.joins(guests: {invitations: :users}).where(user_id: params[:user_id])
  end

  def show

  end
end