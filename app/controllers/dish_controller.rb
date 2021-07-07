class DishController < ApplicationController
  def index
    @staple = Staple.order("RAND()").first

    @main_dish = MainDish.order("RAND()").first

    @sub_dish = SubDish.order("RAND()").first

    @soup = Soup.order("RAND()").first
  end
end
