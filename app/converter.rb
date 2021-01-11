class Binary_Converter
    def initialize
        get_number
    end
    def get_number
      print "Put a number: "
      user_number=gets
      decimal_to_binary(user_number)
    end

    def decimal_to_binary(number)
      binary_number=number.to_i
      binary_number= binary_number.to_s(2)
      array_generator(binary_number)
    end

    def array_generator(binary_number) #separate ones, tenths,hundredths
      number,array=binary_number.to_i,[]
        until number.zero?
            number,r=number.divmod(10)
            array.unshift(r)
        end
      print_message(array)
    end

    def print_message(array)
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
      print message_array
    end
end
Binary_Converter.new