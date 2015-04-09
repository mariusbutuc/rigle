require 'test_helper'

class TestApp < Rigle::Application; end


class TestRigle < Minitest::Test

  def app
    TestApp.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::Rigle::VERSION
  end

  def test_request
    get '/'

    assert_equal true, last_response.ok?
    # assert last_response.body['Hello']
    assert_match /Hello/, last_response.body
    assert_equal 'text/html', last_response.content_type
  end

  def test_that_it_is_not_successful_for_non_existing_files
    skip('for now')
    get '/404'

    assert_equal true, last_response.not_found?
  end

  def test_that_it_is_not_short_and_stout
    head '/'

    refute last_response.i_m_a_teapot?, "\n\t» Tip me over and pour me out."
  end
end
