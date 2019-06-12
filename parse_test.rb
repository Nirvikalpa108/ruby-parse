require 'minitest/autorun'
require_relative 'parse.rb'

class ParseTest < Minitest::Test

  def test_result_correct
    expected_elements = ["/about/2 90 unique views",
                         "/contact 89 unique views",
                         "/index 82 unique views",
                         "/about 81 unique views",
                         "/help_page/1 80 unique views",
                         "/home 78 unique views"]
    assert_equal(expected_elements, Parse.new.parse('webserver.log'))
  end
end