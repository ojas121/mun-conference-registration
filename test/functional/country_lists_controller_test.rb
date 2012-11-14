require 'test_helper'

class CountryListsControllerTest < ActionController::TestCase
  setup do
    @country_list = country_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:country_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create country_list" do
    assert_difference('CountryList.count') do
      post :create, country_list: @country_list.attributes
    end

    assert_redirected_to country_list_path(assigns(:country_list))
  end

  test "should show country_list" do
    get :show, id: @country_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @country_list
    assert_response :success
  end

  test "should update country_list" do
    put :update, id: @country_list, country_list: @country_list.attributes
    assert_redirected_to country_list_path(assigns(:country_list))
  end

  test "should destroy country_list" do
    assert_difference('CountryList.count', -1) do
      delete :destroy, id: @country_list
    end

    assert_redirected_to country_lists_path
  end
end
