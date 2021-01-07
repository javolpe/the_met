require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/exhibit'
require './lib/patron'
require './lib/exhibit'

class PatronTest < MiniTest::Test 
  def test_patron_exists_and_has_attributes
    patron_1 = Patron.new("Bob", 20)

    assert_instance_of Patron, patron_1
    assert_equal "Bob", patron_1.name
    assert_equal 20, patron_1.spending_money
  end
end