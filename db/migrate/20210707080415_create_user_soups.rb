class CreateUserSoups < ActiveRecord::Migration[6.0]
  def change
    create_table :user_soups do |t|
      t.string :u_soup, null: false
      t.timestamps 
    end
  end
end
