require 'test_helper'

class WorkoutPlansControllerTest < ActionController::TestCase
  setup do
    @workout_plan = workout_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workout_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workout_plan" do
    assert_difference('WorkoutPlan.count') do
      post :create, workout_plan: { description: @workout_plan.description, title: @workout_plan.title }
    end

    assert_redirected_to workout_plan_path(assigns(:workout_plan))
  end

  test "should show workout_plan" do
    get :show, id: @workout_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workout_plan
    assert_response :success
  end

  test "should update workout_plan" do
    patch :update, id: @workout_plan, workout_plan: { description: @workout_plan.description, title: @workout_plan.title }
    assert_redirected_to workout_plan_path(assigns(:workout_plan))
  end

  test "should destroy workout_plan" do
    assert_difference('WorkoutPlan.count', -1) do
      delete :destroy, id: @workout_plan
    end

    assert_redirected_to workout_plans_path
  end
end
