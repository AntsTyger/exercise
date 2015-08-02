require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  should validate_presence_of(:date).with_message(/can't be empty/)
  should validate_presence_of(:workout).with_message(/can't be empty/) 
  should validate_presence_of(:mood).with_message(/can't be empty/)
  should validate_presence_of(:length).with_message(/can't be empty/)
end
