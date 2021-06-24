class MainController < ApplicationController
  protect_from_forgery
  def index
    @user_dish = UserDish.new
    @food = Food.new
  end

  def create
    @user_dish = UserDish.new(dish_params)
    if @user_dish.user_staple.blank? && @user_dish.user_main_dish.blank? && @user_dish.user_sub_dish.blank? && @user_dish.user_soup.blank?
      render :show
    else
      @user_dish.save
      redirect_to root_path
    end
  end

  private

  def dish_params
    params.require(:user_dish).permit(:user_staple, :user_main_dish, :user_sub_dish, :user_soup)
  end
end
