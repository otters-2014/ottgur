require 'spec_helper'

describe Image do
  it { should belong_to(:uploader).class_name('User').with_foreign_key(:user_id) }
  it { should have_many(:votes) }
  it { should have_many(:favorites) }
  it { should have_many(:comments) }

  it 'should mount an uploader'
end
