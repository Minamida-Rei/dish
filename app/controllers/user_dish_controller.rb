class UserDishController < ApplicationController
  def index
    @staple = UserDish.order("RAND()").first.user_staple
    if @staple.blank?
      return redirect_to user_dish_index_path
    end

    @main_dish = UserDish.order("RAND()").second.user_main_dish
    if @main_dish.blank?
      return redirect_to user_dish_index_path
    end

    @sub_dish = UserDish.order("RAND()").third.user_sub_dish
    if @sub_dish.blank?
      return redirect_to user_dish_index_path
    end

    @soup = UserDish.order("RAND()").fourth.user_soup
    if @soup.blank?
      return redirect_to user_dish_index_path
    end
  end
end
