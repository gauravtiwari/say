class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :background
      t.string :user_name
      t.text :text

      t.timestamps null: false
    end
  end
end
