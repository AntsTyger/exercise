require 'test_helper'

class RoutineTest < ActiveSupport::TestCase
  should validate_presence_of(:title).with_message(/can't be empty/)
  should validate_presence_of(:description).with_message(/can't be empty/) 
end
