# puts 1 + 1
#
# #Modulo
#
# puts 1 % 1 #should equal 0
# puts 3 % 3 #should equal 0
# puts 4 % 2 #should equal 0
# puts 5 % 2 #should equal 1
# puts 110 % 20 #should equal 10
#
# #Comparison operators
#
# puts 1 < 2 #true less than
# puts 1 > 2 #false greater than
# puts 1 >= 1 #true greater than of equal to
# puts 5 <= 10 #true less than or equal to
# puts 5 == 5 #true - equal to
# puts 5 != 6 #true - does not equal
#
# #logical operators
#
# puts true && true #true - evaluates to true if both 'true'
# puts false && true #false - evaluates false if one false
# puts true && false #false
# puts false && false #false - evaluates false if both 'false'
#
# #|| once true expression met - no further evaluation
# puts true || false # true - right hand will not evaluate as true condition already met
# puts false || true #true
# puts false || false #false
# puts true || true # true
#
# #! - not
#
# puts !true #false
# puts !false #true
#
# puts !true && false # false
# puts !(true && false) #true
#
# #while accumulator
# my_number = 0
#
# while true do
#   my_number += 1
#
#   puts my_number
#
#   if my_number == 10
#     break
#   end
# end

# Return - amended to return b
def return_a
if true
  a = 1
  b = 2
  return b
end

end

# loops and conditionals - method to print odd numbers to 100

def odd_numbers_to_100
  num = 0
  while num < 100
      num += 1
    if num.odd?
      puts num
    end
  end
end

#introducing strings

todo_1 = String.new("wash the dog")
todo_1.capitalize

one_string = "1"
two_string = "2"

one_string + two_string #return 12 - strings concatenate

one_string + 1 # throw an error - cant add different class together - return values are not the same - would need to convert to same class 
