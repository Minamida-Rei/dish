class CreateUserMainDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_main_dishes do |t|
      t.string :u_main, null: false
      t.timestamps
    end
  end
end
