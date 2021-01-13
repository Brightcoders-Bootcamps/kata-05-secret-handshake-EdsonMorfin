# frozen_string_literal: true

# Creates an array with unit,dozen,hundreds and another one with output data
class ArrayGenerator
  def initialize(user_number)
    @user_number = user_number.to_i
  end

  def organizer(binary_number)
    array,message_array = [],[]
    number=binary_number.to_i
    print choice(print_message(split_number(array,number),message_array))
  end

  def split_number(array,number)
    until number.zero?
      number, r = number.divmod(10)
      array.unshift(r)
    end
    array
  end

  def print_message(array,message_array)
    message_array << 'wink' if array[-1] == 1
    message_array << 'double wink' if array[-2] == 1
    message_array << 'close your eyes' if array[-3] == 1
    message_array << 'jump' if array[-4] == 1
    message_array
  end

  def choice(array)
    array = array.reverse if @user_number > 16
    array
  end
end
