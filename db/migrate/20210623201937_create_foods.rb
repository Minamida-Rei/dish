class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :staple
      t.string :main_dish
      t.string :sub_dish
      t.string :soup
      t.timestamps
    end
  end
end
