require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
  # Your test methods go here.
  
  def setup
      @dictionary = Dictionary.new
    end

    def test_words_is_chair
      assert_equal ["chair"], @dictionary.output_valid('blah', 'chair')
    end
    
    def test_returns_multiple_words_in_order
      assert_equal ['chair', 'door', 'window'], @dictionary.output_valid('blah', 'chair', 'asda', 'door', 'window')
    end
    
   def test_string_segment
      assert_equal ["chair"], @dictionary.string("chairasdasdchairwind")
   end
end

# Remember, the names of all test methods should begin with "test_".