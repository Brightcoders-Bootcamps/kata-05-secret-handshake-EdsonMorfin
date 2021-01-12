class Binary_Converter
    def initialize
        get_number
    end

    def get_number
      choice= false
      print "Put a number: "
      user_number=gets
      user_number=user_number.to_i
      array=decimal_to_binary(user_number)
      if user_number > 15
        choice=true
      end
      print array
      print_message(array,choice)
    end

    def decimal_to_binary(number)
      binary_number=number.to_i
      binary_number= binary_number.to_s(2)
      return array_generator(binary_number)
    end


    def array_generator(binary_number) #separate ones, tenths,hundredths
      number,array=binary_number.to_i,[]
        until number.zero?
            number,r=number.divmod(10)
            array.unshift(r)
        end
      return array
    end

    def print_message(array,choice)
      message_array=[]
      if array[-1]==1
        message_array << "wink" 
      end
      if array[-2]==1
        message_array << "double wink"
      end
      if array[-3]==1
        message_array << "close your eyes"
      end

      if array[-4]==1
        message_array << "jump"
      end

      if choice 
        message_array=message_array.reverse()
      end
      print message_array
    end
end
Binary_Converter.new
