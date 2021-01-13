class Array_generator
    def initialize(user_number)
        $user_number= user_number
    end 

    def split_number(binary_number)
    number,array=binary_number.to_i,[]
        until number.zero?
            number,r=number.divmod(10)
            array.unshift(r)
        end
      print array
      print_message(array)
  end

  def print_message(array)
    message_array=[]
    message_array << "wink" if array[-1]==1
    message_array << "double wink" if array[-2]==1
    message_array << "close your eyes" if array[-3]==1
    message_array << "jump" if array[-4]==1
    print choice(message_array)
  end

  def choice(array)
    array=array.reverse() if $user_number > 16
    array
  end
end