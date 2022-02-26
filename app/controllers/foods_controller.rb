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
      byebug
    end
  end

  private

  def food_parameter
    params.require(:food).permit(:food, :calorie, :eat_timing, :eat_time)
  end

end
