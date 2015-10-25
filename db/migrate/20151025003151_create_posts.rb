class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id, index: true
      t.string :background
      t.string :user_name, index: true
      t.text :text

      t.timestamps null: false
    end
  end
end
