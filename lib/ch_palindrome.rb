# frozen_string_literal: true

require_relative "ch_palindrome/version"

class String

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
      self.scan(/[a-z]/i).join.downcase
    end


end

# Madam, I'm Adam.