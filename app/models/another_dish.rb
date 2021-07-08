class AnotherDish
  include ActiveModel::Model

  attr_accessor :u_staple, :u_main, :u_sub, :u_soup

  def save
    unless u_staple.blank? || UserStaple.where(u_staple: u_staple).exists?
      UserStaple.create(u_staple: u_staple)
    end

    unless u_main.blank? || UserMainDish.where(u_main: u_main).exists?
      UserMainDish.create(u_main: u_main)
    end

    unless u_sub.blank? || UserSubDish.where(u_sub: u_sub).exists?
      UserSubDish.create(u_sub: u_sub)
    end

    unless u_soup.blank? || UserSoup.where(u_soup: u_soup).exists?
      UserSoup.create(u_soup: u_soup)
    end
  end
  
end