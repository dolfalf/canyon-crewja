require 'test_helper'

class QuestionInputsControllerTest < ActionController::TestCase
  setup do
    @question_input = question_inputs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_inputs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_input" do
    assert_difference('QuestionInput.count') do
      post :create, question_input: { branch_id: @question_input.branch_id, input_id: @question_input.input_id, question_comment: @question_input.question_comment, question_group: @question_input.question_group, question_number: @question_input.question_number, question_value: @question_input.question_value }
    end

    assert_redirected_to question_input_path(assigns(:question_input))
  end

  test "should show question_input" do
    get :show, id: @question_input
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_input
    assert_response :success
  end

  test "should update question_input" do
    patch :update, id: @question_input, question_input: { branch_id: @question_input.branch_id, input_id: @question_input.input_id, question_comment: @question_input.question_comment, question_group: @question_input.question_group, question_number: @question_input.question_number, question_value: @question_input.question_value }
    assert_redirected_to question_input_path(assigns(:question_input))
  end

  test "should destroy question_input" do
    assert_difference('QuestionInput.count', -1) do
      delete :destroy, id: @question_input
    end

    assert_redirected_to question_inputs_path
  end
end
