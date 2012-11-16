require 'test_helper'

class CommitteeSchoolsControllerTest < ActionController::TestCase
  setup do
    @committee_school = committee_schools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:committee_schools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create committee_school" do
    assert_difference('CommitteeSchool.count') do
      post :create, committee_school: @committee_school.attributes
    end

    assert_redirected_to committee_school_path(assigns(:committee_school))
  end

  test "should show committee_school" do
    get :show, id: @committee_school
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @committee_school
    assert_response :success
  end

  test "should update committee_school" do
    put :update, id: @committee_school, committee_school: @committee_school.attributes
    assert_redirected_to committee_school_path(assigns(:committee_school))
  end

  test "should destroy committee_school" do
    assert_difference('CommitteeSchool.count', -1) do
      delete :destroy, id: @committee_school
    end

    assert_redirected_to committee_schools_path
  end
end
