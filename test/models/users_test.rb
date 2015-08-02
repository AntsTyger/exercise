require 'test_helper'

class UsersTest < ActiveSupport::TestCase
  should validate_presence_of(:name).with_message(/can't be empty/)
  should validate_presence_of(:gender).with_message(/can't be empty/) 
  should validate_presence_of(:age).with_message(/can't be empty/)
  should validate_presence_of(:email).with_message(/can't be empty/)

  should_not allow_value("blah").for(:email)
end
