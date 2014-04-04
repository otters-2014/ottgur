require 'spec_helper'

describe User do
  it { should have_many(:favorites) }
  it { should have_many(:votes) }
  it { should have_many(:images) }
  it { should have_many(:comments) }
  it 'should include devise modules'
end
