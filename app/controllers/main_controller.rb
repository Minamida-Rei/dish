class MainController < ApplicationController
  protect_from_forgery
  def index
    @user_dish = AnotherDish.new
  end

  def create
    @user_dish = AnotherDish.new(dish_params)
    if @user_dish.u_staple.blank? && @user_dish.u_main.blank? && @user_dish.u_sub.blank? && @user_dish.u_soup.blank?
      render :show
    elsif @user_dish.valid?
      @user_dish.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def dish_params
    params.require(:another_dish).permit(:u_staple, :u_main, :u_sub, :u_soup)
  end
end
