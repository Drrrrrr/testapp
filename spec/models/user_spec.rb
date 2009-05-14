require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe User do

  it "should be created with valid attributes" do
    @user = Factory.create(:user).should be_valid
  end
  
  it "should not be created without name" do
    @user = Factory.build(:user, :username => nil).should_not be_valid
  end
  
  it "should not be created without password" do
    @user = Factory.build(:user, :password => nil).should_not be_valid
  end
  
  it "should not be created twice with same username" do
    @user = Factory.create(:user, :username => "some name")
    @user2 = Factory.build(:user, :username => "some name").should_not be_valid
  end
  
end