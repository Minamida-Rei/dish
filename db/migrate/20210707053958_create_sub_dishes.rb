class CreateSubDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_dishes do |t|
      t.string :s_dish
      t.string :sd_url
      t.timestamps
    end
  end
end
