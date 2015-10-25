class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id, index: true, null: false
      t.string :background
      t.string :user_name, index: true, null: false
      t.text :text, null: false

      t.timestamps null: false
    end
  end
end
