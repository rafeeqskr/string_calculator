class StringCalculator
	def self.add(str)
		return 0 if str.empty?
		
		delimiter = str.start_with?("//") ? str[2] : ","
		str = str.split("\n", 2).last if str.start_with?("//")
		
		numbers = str.split(/[\n#{delimiter}]/).map(&:to_i)
		
		negative_numbers = numbers.select { |n| n < 0 }
		raise ArgumentError, "negative numbers not allowed: #{negative_numbers.join(', ')}" unless negative_numbers.empty?

		numbers.select! { |n| n <= 1000 }  # Ignoring the numbers greater than 1000

		numbers.sum
	end
end