class CreateStaples < ActiveRecord::Migration[6.0]
  def change
    create_table :staples do |t|
      t.string :staple
      t.string :st_url
      t.timestamps
    end
  end
end
