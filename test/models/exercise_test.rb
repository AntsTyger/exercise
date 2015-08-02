require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  should validate_presence_of(:name).with_message(/can't be empty/)
  should validate_presence_of(:sets).with_message(/can't be empty/)
  should validate_presence_of(:reps).with_message(/can't be empty/) 
 
end
