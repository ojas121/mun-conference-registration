require 'test_helper'

class DelegationAssignmentsControllerTest < ActionController::TestCase
  setup do
    @delegation_assignment = delegation_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delegation_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delegation_assignment" do
    assert_difference('DelegationAssignment.count') do
      post :create, delegation_assignment: @delegation_assignment.attributes
    end

    assert_redirected_to delegation_assignment_path(assigns(:delegation_assignment))
  end

  test "should show delegation_assignment" do
    get :show, id: @delegation_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delegation_assignment
    assert_response :success
  end

  test "should update delegation_assignment" do
    put :update, id: @delegation_assignment, delegation_assignment: @delegation_assignment.attributes
    assert_redirected_to delegation_assignment_path(assigns(:delegation_assignment))
  end

  test "should destroy delegation_assignment" do
    assert_difference('DelegationAssignment.count', -1) do
      delete :destroy, id: @delegation_assignment
    end

    assert_redirected_to delegation_assignments_path
  end
end
