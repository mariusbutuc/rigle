require 'test_helper'

class ArrayTest < Minitest::Test
  def test_sum_adds_up_the_elements_of_the_array
    fourty_two = [12, 14, 16].sum

    assert_equal 42, fourty_two
  end
end
