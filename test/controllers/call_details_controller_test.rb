require 'test_helper'

class CallDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @call_detail = call_details(:one)
  end

  test "should get index" do
    get call_details_url
    assert_response :success
  end

  test "should get new" do
    get new_call_detail_url
    assert_response :success
  end

  test "should create call_detail" do
    assert_difference('CallDetail.count') do
      post call_details_url, params: { call_detail: { call_id: @call_detail.call_id, end_time: @call_detail.end_time, start_time: @call_detail.start_time, word: @call_detail.word } }
    end

    assert_redirected_to call_detail_url(CallDetail.last)
  end

  test "should show call_detail" do
    get call_detail_url(@call_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_call_detail_url(@call_detail)
    assert_response :success
  end

  test "should update call_detail" do
    patch call_detail_url(@call_detail), params: { call_detail: { call_id: @call_detail.call_id, end_time: @call_detail.end_time, start_time: @call_detail.start_time, word: @call_detail.word } }
    assert_redirected_to call_detail_url(@call_detail)
  end

  test "should destroy call_detail" do
    assert_difference('CallDetail.count', -1) do
      delete call_detail_url(@call_detail)
    end

    assert_redirected_to call_details_url
  end
end
