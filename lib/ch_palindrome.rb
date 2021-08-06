# frozen_string_literal: true

require_relative "ch_palindrome/version"

module ChPalindrome
	  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns string without punctuation
  # def letters
  # 	# self.chars.select{|n| n.match(/[a-z]/i)}.join
  # 	self.scan(/[a-z]/i).join
  # end

  private

    # Returns content for palindrome testing.
    def processed_content
    	# self.letters.downcase
      self.to_s.scan(/[a-z]\d/i).join.downcase
    end
end

class String
	include ChPalindrome
end

class Integer
	include ChPalindrome
end

# Madam, I'm Adam.