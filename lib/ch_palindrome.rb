require "ch_palindrome/version"

module ChPalindrome
	# Returns true for a palindrome, false otherwise.
	def palindrome?
	  processed_content == processed_content.reverse
	end

	private

	  # Returns content for palindrome testing.
	  def processed_content
	    self.to_s.scan(/[a-z]/i).join.downcase
	  end
end

class String
	include ChPalindrome
end

class Integer
	include ChPalindrome
end