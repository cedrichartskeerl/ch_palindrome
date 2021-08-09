# frozen_string_literal: true

require "test_helper"

class ChPalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ChPalindrome::VERSION
  end

  def test_non_palindrome
    refute "apple".palindrome?
  end

 def test_empty_string_non_palindrome
  refute "".palindrome?
end

def test_whitespace_string_non_palindrome
  refute "  \n \t \r   ".palindrome?
end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_integer_non_palindrome
  	refute 12345.palindrome?
  	# skip
  end

  def test_integer_palindrome
  	assert 12321.palindrome?
  	# skip
  end

  # def test_letters
  #   assert_equal "MadamImAdam", "Madam, I'm Adam.".letters
  # end

end
