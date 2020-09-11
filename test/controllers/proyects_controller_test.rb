require 'test_helper'

class ProyectsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get proyects_new_url
    assert_response :success
  end

  test "should get create" do
    get proyects_create_url
    assert_response :success
  end

end
