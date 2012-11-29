require 'test_helper'

class DelegateAssignmentsControllerTest < ActionController::TestCase
  setup do
    @delegate_assignment = delegate_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delegate_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delegate_assignment" do
    assert_difference('DelegateAssignment.count') do
      post :create, delegate_assignment: @delegate_assignment.attributes
    end

    assert_redirected_to delegate_assignment_path(assigns(:delegate_assignment))
  end

  test "should show delegate_assignment" do
    get :show, id: @delegate_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delegate_assignment
    assert_response :success
  end

  test "should update delegate_assignment" do
    put :update, id: @delegate_assignment, delegate_assignment: @delegate_assignment.attributes
    assert_redirected_to delegate_assignment_path(assigns(:delegate_assignment))
  end

  test "should destroy delegate_assignment" do
    assert_difference('DelegateAssignment.count', -1) do
      delete :destroy, id: @delegate_assignment
    end

    assert_redirected_to delegate_assignments_path
  end
end
