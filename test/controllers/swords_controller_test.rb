require 'test_helper'

class SwordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get swords_index_url
    assert_response :success
  end

  test "should get show" do
    get swords_show_url
    assert_response :success
  end

  test "should get new" do
    get swords_new_url
    assert_response :success
  end

  test "should get edit" do
    get swords_edit_url
    assert_response :success
  end

end
