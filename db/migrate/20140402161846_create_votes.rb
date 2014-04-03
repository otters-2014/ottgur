class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :direction
      t.integer :user_id
      t.integer :image_id

      t.timestamps
    end
  end
end
