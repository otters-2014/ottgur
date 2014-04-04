require 'spec_helper'

describe Comment do
  it { should have_many(:replies).class_name('Comment').with_foreign_key(:comment_id) }
  it { should belong_to(:user) }
  it { should belong_to(:image) }
end
