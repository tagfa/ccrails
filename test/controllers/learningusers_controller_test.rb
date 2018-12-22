require 'test_helper'

class LearningusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @learninguser = learningusers(:one)
  end

  test "should get index" do
    get learningusers_url
    assert_response :success
  end

  test "should get new" do
    get new_learninguser_url
    assert_response :success
  end

  test "should create learninguser" do
    assert_difference('Learninguser.count') do
      post learningusers_url, params: { learninguser: { name: @learninguser.name } }
    end

    assert_redirected_to learninguser_url(Learninguser.last)
  end

  test "should show learninguser" do
    get learninguser_url(@learninguser)
    assert_response :success
  end

  test "should get edit" do
    get edit_learninguser_url(@learninguser)
    assert_response :success
  end

  test "should update learninguser" do
    patch learninguser_url(@learninguser), params: { learninguser: { name: @learninguser.name } }
    assert_redirected_to learninguser_url(@learninguser)
  end

  test "should destroy learninguser" do
    assert_difference('Learninguser.count', -1) do
      delete learninguser_url(@learninguser)
    end

    assert_redirected_to learningusers_url
  end
end
