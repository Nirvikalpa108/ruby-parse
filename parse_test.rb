require 'minitest/autorun'
require_relative 'parse.rb'

class ParseTest < Minitest::Test
  def test_print_log
    # prints log
  end

  def test_split_log
    # log split correctly from "xxx\1 xxxx" to "xxx\1"
  end

  def test_sort
    # loops through split log
    # calculates number of occurrences
    # prints to screen each occurence with number of views ordered from greatest to least views
    # should look like:
    # /about/2 8 unique views
    # /index 5 unique views
  end
end