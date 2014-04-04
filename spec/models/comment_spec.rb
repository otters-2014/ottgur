require 'spec_helper'

describe Comment do
  it { should have_many(:replies) }
  it { should belong_to(:user) }
  it { should belong_to(:image) }
end
