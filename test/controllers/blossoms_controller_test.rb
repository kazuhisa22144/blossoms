require 'test_helper'

class BlossomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blossoms_index_url
    assert_response :success
  end

  test "should get new" do
    get blossoms_new_url
    assert_response :success
  end

  test "should get show" do
    get blossoms_show_url
    assert_response :success
  end

  test "should get edit" do
    get blossoms_edit_url
    assert_response :success
  end

end
