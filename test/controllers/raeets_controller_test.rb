# frozen_string_literal: true

require 'test_helper'

class RaeetsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get raeets_index_url
    assert_response :success
  end
end
