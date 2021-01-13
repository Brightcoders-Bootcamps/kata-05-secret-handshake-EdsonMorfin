require_relative 'get_number.rb'

print "Welcome do you want to learn a secret handshake (Y/N)?"
choice= gets.chomp
choice.upcase
if choice == "Y" or choice == "YES"
    print "Alright then " 
    Get_number.new
else
    puts "anyway I didn't even want to teach it to you"
end