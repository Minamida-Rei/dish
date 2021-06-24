class CreateUserDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_dishes do |t|
      t.string :user_staple
      t.string :user_main_dish
      t.string :user_sub_dish
      t.string :user_soup
      t.timestamps
    end
  end
end
