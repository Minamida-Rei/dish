class DishController < ApplicationController
  def index
    @staple = Staple.order("RAND()").first.staple

    @main_dish = MainDish.order("RAND()").first.m_dish

    @sub_dish = SubDish.order("RAND()").first.s_dish

    @soup = Soup.order("RAND()").first.soup
  end
end
