class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :name
      t.text :contact
      t.text :about_me
      t.text :housing_preference

      t.timestamps null: false
    end
  end
end
