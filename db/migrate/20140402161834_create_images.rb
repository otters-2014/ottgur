class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :filename
      t.string :thumb_filename
      t.integer :user_id
      t.text :caption

      t.timestamps
    end
  end
end
