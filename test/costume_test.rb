gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/costume'

class CostumeTest < Minitest::Test
  def test_costume_style
    costume = Costume.new("Batman")
    assert_equal costume.style, "Batman"
  end

  def test_other_style_of_costume
    costume = Costume.new("Princess")
    assert_equal costume.style, "Princess"
  end
end

