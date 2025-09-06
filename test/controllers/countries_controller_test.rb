require "test_helper"

class CountriesControllerTest < ActionDispatch::IntegrationTest
  test "should get map" do
    get countries_map_url
    assert_response :success
  end
end
