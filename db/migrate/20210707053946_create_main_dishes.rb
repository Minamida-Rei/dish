class CreateMainDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :main_dishes do |t|
      t.string :m_dish
      t.string :md_url
      t.timestamps
    end
  end
end
