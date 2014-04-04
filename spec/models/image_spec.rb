require 'spec_helper'

describe Image do
  it { should belong_to(:uploader).class_name('User') }
  it { should have_many(:votes) }
  it { should have_many(:favorites) }
  it { should have_many(:comments) }
end
