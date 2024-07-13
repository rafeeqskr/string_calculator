# String Calculator

This is a simple string calculator implemented in Ruby.

## Prerequisites

- Ruby (version 3.0.0
- RSpec (version 3.13)


## Install RSpec
- gem install rspec


## Usage
require './string_calculator'

puts StringCalculator.add("") # Output: 6
puts StringCalculator.add("1,2,3") # Output: 6
puts StringCalculator.add("1\n2\n3") # Output: 6
puts StringCalculator.add("1\n2,3") # Output: 6

