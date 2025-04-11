# frozen_string_literal: true

require 'test_helper'

class LimericksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test 'should get index' do
    limericks_size = limericks.size
    get root_url
    assert_response :success
    assert_select 'div.card', limericks_size
  end
end
