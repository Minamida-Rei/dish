class CreateSubDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_dishes do |t|

      t.timestamps
    end
  end
end
