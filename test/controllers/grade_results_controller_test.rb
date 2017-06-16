require 'test_helper'

class GradeResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grade_result = grade_results(:one)
  end

  test "should get index" do
    get grade_results_url
    assert_response :success
  end

  test "should get new" do
    get new_grade_result_url
    assert_response :success
  end

  test "should create grade_result" do
    assert_difference('GradeResult.count') do
      post grade_results_url, params: { grade_result: { name: @grade_result.name, score: @grade_result.score, stundent_id: @grade_result.stundent_id } }
    end

    assert_redirected_to grade_result_url(GradeResult.last)
  end

  test "should show grade_result" do
    get grade_result_url(@grade_result)
    assert_response :success
  end

  test "should get edit" do
    get edit_grade_result_url(@grade_result)
    assert_response :success
  end

  test "should update grade_result" do
    patch grade_result_url(@grade_result), params: { grade_result: { name: @grade_result.name, score: @grade_result.score, stundent_id: @grade_result.stundent_id } }
    assert_redirected_to grade_result_url(@grade_result)
  end

  test "should destroy grade_result" do
    assert_difference('GradeResult.count', -1) do
      delete grade_result_url(@grade_result)
    end

    assert_redirected_to grade_results_url
  end
end
