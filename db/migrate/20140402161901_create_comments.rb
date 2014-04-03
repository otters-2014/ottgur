class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :user_id
      t.integer :image_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
