require "test_helper"

class Api::TypeaheadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_typeahead_index_url
    assert_response :success
  end
end
