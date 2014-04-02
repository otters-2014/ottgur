class AddSubmissionToImages < ActiveRecord::Migration
  def change
    add_column :images, :submission, :string
  end
end
