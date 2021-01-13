require_relative 'array_generator'
class Get_number
  def initialize
    print "Put a number: "
    $user_number= gets
    @generator = Array_generator.new($user_number)
    ask_number
  end

  def ask_number 
    $user_number=$user_number.to_i
    binary_conversion($user_number)
  end

  def binary_conversion(number)
    @generator.split_number(binary_number=number.to_s(2))
  end
end

