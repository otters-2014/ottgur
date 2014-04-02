require 'spec_helper'

describe User do
  let(:user) { User.create(:email => "ian@yahoo.com", :password => "Password123") }

  it "should have an email" do
    expect(user.email).to eq("ian@yahoo.com")
  end

  it "should have a password" do
    expect(user.encrypted_password).should be
  end

  it "should have an encrypted password" do
    expect(user.encrypted_password).should_not eq "Password123"
  end
end
