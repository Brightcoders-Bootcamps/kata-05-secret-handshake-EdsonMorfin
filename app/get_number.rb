# frozen_string_literal: true

require_relative 'array_generator'

# Asks and convert the given number to binary one
class GetNumber
  def initialize
    print 'Put a number: '
    @user_number = gets.to_i
    @generator = ArrayGenerator.new(@user_number)
    binary_conversion
  end

  def binary_conversion
    @generator.organizer(@user_number.to_s(2))
  end
end
