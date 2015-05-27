require 'test_helper'

class StudentCourcesControllerTest < ActionController::TestCase
  setup do
    @student_cource = student_cources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_cources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_cource" do
    assert_difference('StudentCource.count') do
      post :create, student_cource: { branch_id: @student_cource.branch_id, class: @student_cource.class, coruse_id: @student_cource.coruse_id, lecture_enddate: @student_cource.lecture_enddate, lecture_startdate: @student_cource.lecture_startdate, sequence_no: @student_cource.sequence_no, student_id: @student_cource.student_id, timetabel_time: @student_cource.timetabel_time, timetable_week: @student_cource.timetable_week }
    end

    assert_redirected_to student_cource_path(assigns(:student_cource))
  end

  test "should show student_cource" do
    get :show, id: @student_cource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_cource
    assert_response :success
  end

  test "should update student_cource" do
    patch :update, id: @student_cource, student_cource: { branch_id: @student_cource.branch_id, class: @student_cource.class, coruse_id: @student_cource.coruse_id, lecture_enddate: @student_cource.lecture_enddate, lecture_startdate: @student_cource.lecture_startdate, sequence_no: @student_cource.sequence_no, student_id: @student_cource.student_id, timetabel_time: @student_cource.timetabel_time, timetable_week: @student_cource.timetable_week }
    assert_redirected_to student_cource_path(assigns(:student_cource))
  end

  test "should destroy student_cource" do
    assert_difference('StudentCource.count', -1) do
      delete :destroy, id: @student_cource
    end

    assert_redirected_to student_cources_path
  end
end
