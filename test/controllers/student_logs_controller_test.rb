require 'test_helper'

class StudentLogsControllerTest < ActionController::TestCase
  setup do
    @student_log = student_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_log" do
    assert_difference('StudentLog.count') do
      post :create, student_log: { branch_id: @student_log.branch_id, log_engry_person: @student_log.log_engry_person, log_entry_contents: @student_log.log_entry_contents, log_entry_date: @student_log.log_entry_date, sequence_no: @student_log.sequence_no, student_id: @student_log.student_id }
    end

    assert_redirected_to student_log_path(assigns(:student_log))
  end

  test "should show student_log" do
    get :show, id: @student_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_log
    assert_response :success
  end

  test "should update student_log" do
    patch :update, id: @student_log, student_log: { branch_id: @student_log.branch_id, log_engry_person: @student_log.log_engry_person, log_entry_contents: @student_log.log_entry_contents, log_entry_date: @student_log.log_entry_date, sequence_no: @student_log.sequence_no, student_id: @student_log.student_id }
    assert_redirected_to student_log_path(assigns(:student_log))
  end

  test "should destroy student_log" do
    assert_difference('StudentLog.count', -1) do
      delete :destroy, id: @student_log
    end

    assert_redirected_to student_logs_path
  end
end
