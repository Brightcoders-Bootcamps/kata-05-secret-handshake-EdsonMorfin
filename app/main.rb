# frozen_string_literal: true

require_relative 'get_number'

print 'Welcome do you want to learn a secret handshake (Y/N)?'
choice = gets.chomp
choice = choice.upcase
if (choice == 'Y') || (choice == 'YES')
  print 'Alright then '
  GetNumber.new
else
  puts "anyway I didn't even want to teach it to you"
end
