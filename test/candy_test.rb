gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/candy'

class CandyTest < Minitest::Test
  def test_candy_type
    candy = Candy.new("Skittles")
    assert_equal candy.type, "Skittles"
  end

  def test_other_type_of_candy
    candy = Candy.new("Mars")
    assert_equal candy.type, "Mars"
  end
end

