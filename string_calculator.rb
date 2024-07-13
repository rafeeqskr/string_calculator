class StringCalculator
	def self.add(str)
		return 0 if str.empty?
		delimiter = str.start_with?("//") ? str[2] : ","
		str = str.split("\n", 2).last if str.start_with?("//")
		numbers = str.split(/[\n#{delimiter}]/).map(&:to_i)
		numbers.sum
	end
end