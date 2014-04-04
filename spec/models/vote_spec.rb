require 'spec_helper'

describe Vote do
  it { should belong_to(:voter).class_name("User").with_foreign_key(:user_id) }
  it { should belong_to(:image) }
end
