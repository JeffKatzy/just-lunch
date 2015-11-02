class MeetingsController < ApplicationController
  def index
    @meetings = Meeting.where(user_id: params[:id])
  end

  def show

  end
end