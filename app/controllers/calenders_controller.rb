class CalendersController < ApplicationController
# before_action :set_user

 def index
    @calenders =Calender.all
  end

  def show
    @calender = Calender.find(params[:id])
  end

  def new
    @calender_new = Calender.new
  end

  def create
    @calender_new = Calender.new(calender_parameter)
    if @calender_new.save
      redirect_to root_path
    else
      @calenders = Calender.all
      render "index"
    end
  end

  private

  def calender_parameter
    params.require(:calender).permit(:title, :content, :start_time)
  end

  # def set_user
  #   @user = User.find(params[:id])
  # end

end
