require 'test_helper'

class BillDetailInfosControllerTest < ActionController::TestCase
  setup do
    @bill_detail_info = bill_detail_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bill_detail_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill_detail_info" do
    assert_difference('BillDetailInfo.count') do
      post :create, bill_detail_info: { application_id: @bill_detail_info.application_id }
    end

    assert_redirected_to bill_detail_info_path(assigns(:bill_detail_info))
  end

  test "should show bill_detail_info" do
    get :show, id: @bill_detail_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill_detail_info
    assert_response :success
  end

  test "should update bill_detail_info" do
    patch :update, id: @bill_detail_info, bill_detail_info: { application_id: @bill_detail_info.application_id }
    assert_redirected_to bill_detail_info_path(assigns(:bill_detail_info))
  end

  test "should destroy bill_detail_info" do
    assert_difference('BillDetailInfo.count', -1) do
      delete :destroy, id: @bill_detail_info
    end

    assert_redirected_to bill_detail_infos_path
  end
end
