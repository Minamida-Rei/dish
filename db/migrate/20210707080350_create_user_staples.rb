class CreateUserStaples < ActiveRecord::Migration[6.0]
  def change
    create_table :user_staples do |t|
      t.string :u_staple, null: false
      t.timestamps
    end
  end
end
