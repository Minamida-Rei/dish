class AnotherDish
  include ActiveModel::Model

  attr_accessor :u_staple, :u_main, :u_sub, :u_soup


  def save
    unless u_staple.blank?
      UserStaple.create(u_staple: u_staple)
    end

    unless u_main.blank?
      UserMainDish.create(u_main: u_main)
    end

    unless u_sub.blank?
      UserSubDish.create(u_sub: u_sub)
    end

    unless u_soup.blank?
      UserSoup.create(u_soup: u_soup)
    end
  end
end