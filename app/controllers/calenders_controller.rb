class CalendersController < ApplicationController
  def index
    @calenders = Calender.all
  end

  def new
    @calender = Calender.new
  end

  def create
    Calender.create(calender_parameter)
    redirect_to root_path
  end

  private

  def calender_parameter
    params.require(:calender).permit(:title, :content, :start_time)
  end

end
