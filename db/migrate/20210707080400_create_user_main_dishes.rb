class CreateUserMainDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_main_dishes do |t|
      t.string :u_main
      t.timestamps
    end
  end
end
