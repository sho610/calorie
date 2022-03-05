class FoodsController < ApplicationController

  def index
    @foods = Food.all
  end

  def new
    @food_new = Food.new
  end

  def create
    @food_new = Food.new(food_parameter)
    if @food_new.save
      redirect_to foods_path
    else
      @food_new = Food.new
      render "new"
    end
  end

  def show
    @food=Food.find(params[:id])
  end

  private

  def food_parameter
    params.require(:food).permit(:id, :food, :calorie, :eat_timing, :start_time).merge(user_id: current_user.id)
  end

end
