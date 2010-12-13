require File.dirname(__FILE__) + '/test_helper.rb'

class TestSlopeOne < Test::Unit::TestCase
  def setup
    user_data = {
      "rob" => {
        "24" => 9.5,
        "Lost" => 8.2,
        "House" => 6.8
      },

      "bob" => {
        "24" => 3.7,
        "Big Bang Theory" => 2.1,
        "House" => 8.3
      },
      
      "tod" => {
        "24" => 9.5,
        "Lost" => 3.4,
        "House" => 5.5,
        "Big Bang Theory" => 9.3
      },

      "dod" => {
        "24" => 7.2,
        "Lost" => 5.1,
        "House" => 8.4,
        "The Event" => 7.8,
      }
    }

    @slope_one = SlopeOne.new
    @slope_one.insert(user_data)
  end
  
  def input_test(input, output)
    assert @slope_one.predict(input) == output
  end
  
  def test_predict
    input = {"House" => 3, "Big Bang Theory" => 7.5}
    output = {"24"=>4.95, "Lost"=>1.65, "The Event"=>2.4}
    input_test(input, output)
  end
  
  def test_irrelevent_input
    input = {"Eastenders" => 7.25}
    output = {}
    input_test(input, output)
  end
  
  def test_insufficient_data
    @slope_one = SlopeOne.new
    # < here there nay be data insertion >
    input = {"Eastenders" => 7.25}
    output = {}
    input_test(input, output)
  end
end
