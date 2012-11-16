require 'test_helper'

class CountrySchoolsControllerTest < ActionController::TestCase
  setup do
    @country_school = country_schools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:country_schools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create country_school" do
    assert_difference('CountrySchool.count') do
      post :create, country_school: @country_school.attributes
    end

    assert_redirected_to country_school_path(assigns(:country_school))
  end

  test "should show country_school" do
    get :show, id: @country_school
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @country_school
    assert_response :success
  end

  test "should update country_school" do
    put :update, id: @country_school, country_school: @country_school.attributes
    assert_redirected_to country_school_path(assigns(:country_school))
  end

  test "should destroy country_school" do
    assert_difference('CountrySchool.count', -1) do
      delete :destroy, id: @country_school
    end

    assert_redirected_to country_schools_path
  end
end
