class UserDishController < ApplicationController
  def index
    @staple = UserStaple.order("RAND()").first.u_staple
    
    @main_dish = UserMainDish.order("RAND()").first.u_main

    @sub_dish = UserSubDish.order("RAND()").first.u_sub

    @soup = UserSoup.order("RAND()").first.u_soup
   
  end
end
