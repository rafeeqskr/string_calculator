class StringCalculator
	def self.add(str)
		# For an empty string it will return 0
		return 0 if str.empty?
		
		# fetching delimiter from input string
		delimiter = str.start_with?("//") ? str[2] : ","

		# trimming the delimiter related data
		str = str.split("\n", 2).last if str.start_with?("//")
		
		numbers = str.split(/[\n#{delimiter}]/).map(&:to_i)
		
		# Selecting negative numbers
		negative_numbers = numbers.select { |n| n < 0 }

		# raising an error if negative_numbers present
		raise ArgumentError, "negative numbers not allowed: #{negative_numbers.join(', ')}" unless negative_numbers.empty?

		# Ignoring the numbers greater than 1000
		numbers.select! { |n| n <= 1000 }

		numbers.sum
	end
end