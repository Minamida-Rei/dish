class CreateUserSubDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_sub_dishes do |t|
      t.string :u_sub, null: false
      t.timestamps
    end
  end
end
