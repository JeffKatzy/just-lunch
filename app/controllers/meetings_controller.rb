class MeetingsController < ApplicationController
  def index
    # binding.pry
    # @meetings = Meeting.where(user_id: params[:user_id])
    @meetings = Meeting.find(params[:user_id])
  end

  def show

  end
end