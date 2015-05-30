require 'test_helper'

class BillHeadInfosControllerTest < ActionController::TestCase
  setup do
    @bill_head_info = bill_head_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bill_head_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill_head_info" do
    assert_difference('BillHeadInfo.count') do
      post :create, bill_head_info: { payment: @bill_head_info.payment }
    end

    assert_redirected_to bill_head_info_path(assigns(:bill_head_info))
  end

  test "should show bill_head_info" do
    get :show, id: @bill_head_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill_head_info
    assert_response :success
  end

  test "should update bill_head_info" do
    patch :update, id: @bill_head_info, bill_head_info: { payment: @bill_head_info.payment }
    assert_redirected_to bill_head_info_path(assigns(:bill_head_info))
  end

  test "should destroy bill_head_info" do
    assert_difference('BillHeadInfo.count', -1) do
      delete :destroy, id: @bill_head_info
    end

    assert_redirected_to bill_head_infos_path
  end
end
