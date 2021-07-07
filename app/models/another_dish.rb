class AnotherDish
  include ActiveModel::Model

  attr_accessor :u_staple, :u_main, :u_sub, :u_soup

  with_options {uniqueness: true, message: ": はすでに登録されています"}, exclusion: {in: ['http'], message: ": 登録できない文字が含まれています"} do
    validates :u_staple
    validates :u_main
    validates :u_sub
    validates :u_soup
  end

  def save
    UserStaple.create(u_staple: u_staple)
    UserMainDish.create(u_main: u_main)
    UserSubDish.create(u_sub: u_sub)
    UserSoup.create(u_soup: u_soup)
  end
end