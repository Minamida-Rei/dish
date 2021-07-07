class CreateUserMainDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_main_dishes do |t|

      t.timestamps
    end
  end
end
