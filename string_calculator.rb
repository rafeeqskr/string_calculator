class StringCalculator
	def self.add(str)
		return 0 if str.empty?
		delimiter = ','
		numbers = str.split(/[\n#{delimiter}]/).map(&:to_i)
		numbers.sum
	end
end