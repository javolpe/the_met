require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'

class ExhibitTest < MiniTest::Test 
  def test_exhibit_exists_and_has_attributes
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})

    assert_instance_of Exhibit, exhibit
    assert_equal 0, exhibit.cost
    assert_equal "Gems and Minerals", exhibit.name
  end
  
end