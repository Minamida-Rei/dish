class DishController < ApplicationController
  def index
    @staple = Food.order("RAND()").first.staple
    if @staple.blank?
      return redirect_to dish_index_path
    end

    @main_dish = Food.order("RAND()").second.main_dish
    if @main_dish.blank?
      return redirect_to dish_index_path
    end

    @sub_dish = Food.order("RAND()").third.sub_dish
    if @sub_dish.blank?
      return redirect_to dish_index_path
    end

    @soup = Food.order("RAND()").fourth.soup
    if @soup.blank?
      return redirect_to dish_index_path
    end
  end

  def create
    @user_dish = Food.new(food_params)
    @user_dish.save
    redirect_to root_path
  end

  private

  def food_params
    params.require(:food).permit(:staple, :main_dish, :sub_dish, :soup)
  end
end
