class UserLessonsController < ApplicationController

  def show
    @userlesson = UserLesson.find(params[:id])
    render :json => @userlesson
  end

end
