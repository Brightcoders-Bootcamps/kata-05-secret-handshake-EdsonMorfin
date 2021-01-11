class Binary_Converter
    def initialize
        base=gets
        @base_number=base.to_i
        test
    end
    def test
        a=@base_number.to_s(2)  #decimal to binary converter
        a=a.to_i
        puts a
        test2(a)
    
    end

    def test2(a)
        n,array=a,[]
        until n.zero?
            n,r=n.divmod(10)
            print "n="
            print n
            print "r="
            print r
            array.unshift(r)
        end
        print array
        test3(array)
    end

    def test3(array)
        new_array=[]

        if array[0]==1 and array[1] != nil
            new_array << "double blink"

        elsif array[1]==1 or array[0]==1
            new_array << "wink"
        end

        if array[0]==1 and array[2]==0
            new_array << "close your eyes"
        end
        print new_array
    end
end
Binary_Converter.new

