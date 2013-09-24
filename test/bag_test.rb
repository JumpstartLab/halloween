gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/bag'
require './lib/candy'

class BagTest < Minitest::Test
  def test_bag_is_empty
    assert Bag.new.empty?
  end

  def test_empty_bag_has_zero_candies
    assert_equal 0, Bag.new.count
  end

  def test_bag_takes_candy
    bag = Bag.new
    candy = Candy.new("Nerds")
    bag << candy
    refute bag.empty?
  end

  def test_empty_bag_has_zero_candies
    bag = Bag.new
    bag << Candy.new("Caramelized Almonds")
    assert_equal 1, bag.count
  end

  def test_bag_contains_candies
    bag = Bag.new
    candy = Candy.new("Sour frogs")
    bag << candy
    assert_equal [candy], bag.candies
  end

  def test_bag_contains_candies_and_candies_have_a_type
    bag = Bag.new
    candy = Candy.new("Hershey's Kisses")
    bag << candy
    # You usually don't want to chain a bunch of different
    # types of things together like this.
    # We'll talk about it more in a few weeks.
    # It's important to understand how these methods work, though.
    type = bag.candies.first.type
    assert_equal "Hershey's Kisses", type
  end

  def test_ask_bag_if_it_contains_a_particular_type_of_candy
    bag = Bag.new
    bag << Candy.new("Lindt chocolate")

    assert bag.contains?("Lindt chocolate")
    refute bag.contains?("Hershey's chocolate")
  end
end

