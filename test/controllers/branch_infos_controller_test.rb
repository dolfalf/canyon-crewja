require 'test_helper'

class BranchInfosControllerTest < ActionController::TestCase
  setup do
    @branch_info = branch_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:branch_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create branch_info" do
    assert_difference('BranchInfo.count') do
      post :create, branch_info: { address: @branch_info.address, branch_name: @branch_info.branch_name }
    end

    assert_redirected_to branch_info_path(assigns(:branch_info))
  end

  test "should show branch_info" do
    get :show, id: @branch_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @branch_info
    assert_response :success
  end

  test "should update branch_info" do
    patch :update, id: @branch_info, branch_info: { address: @branch_info.address, branch_name: @branch_info.branch_name }
    assert_redirected_to branch_info_path(assigns(:branch_info))
  end

  test "should destroy branch_info" do
    assert_difference('BranchInfo.count', -1) do
      delete :destroy, id: @branch_info
    end

    assert_redirected_to branch_infos_path
  end
end
