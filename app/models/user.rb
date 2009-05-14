class User < ActiveRecord::Base

  attr_accessor :password

  validates_presence_of :username, :message => "should not be blank"
  validates_presence_of :password
  
  validates_uniqueness_of :username
  
end
