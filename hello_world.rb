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
# def return_a
# if true
#   a = 1
#   b = 2
#   return b
# end
#
# end
#
# # loops and conditionals - method to print odd numbers to 100
#
# def odd_numbers_to_100
#   num = 0
#   while num < 100
#       num += 1
#     if num.odd?
#       puts num
#     end
#   end
# end
#
# #introducing strings
#
# todo_1 = String.new("wash the dog")
# todo_1.capitalize
#
# one_string = "1"
# two_string = "2"
#
# one_string + two_string #return 12 - strings concatenate
#
# one_string + 1 # throw an error - cant add different class together - return values are not the same - would need to convert to same class

#chapter 6 - Arrays

array = Array.new

array.push("Hello world")
array.push(1)
array.push(1.0)
array.push("Goodbye")

another_array = ['hi','there','i','am','an','array']

array.delete_at(2) #remove second element from Array
array.pop #Will remove last element from array
array[3] #will return 4th element of array

another_array.slice[0,1] #will return hi -

sentence = ["Hello,", "you", "are", "NOT", "welcome", "here"]

sentence.join(" ")
sentence.delete("NOT")

greeting = "Hello world"
greeting[0] #return H
greeting.split #return array ["Hello", "world"]
greeting.split("l") # return ["He", "", "o Wor", "d!"]

bad_string = "Why|am|I|so|hard|to|read"
bad_string.split("|").join(" ") # return "Why am I so hard to read"

groups = [
  ["Mary", "Sam"],
  ["Peter", "Kay"]
  ]

team_1 = groups[0] # ["Mary", "Sam"]
team_2 = groups[1] # ["Peter", "Kay"]

team_1 = ["Mary", "Sam"]
team_2 = ["Peter", "Kay"]

groups = [team_1, team_2] #[["Mary", "Sam"], ["Peter", "Kay"]]

arr_1 = [1,2,3,4]
arr_2 = [4,5,6,7]
arr_1 + arr_2 #[1, 2, 3, 4, 4, 5, 6, 7]

arr_1.length #4

my_array = ["Hello", "there", "friend!"]
current_index = 0

while current_index < my_array.length do
  puts "I'm looping!"
  current_index += 1
end

#returns
# I'm looping!
# I'm looping!
# I'm looping!

#altered to use a break

my_array = ["Hello", "there", "friend!"]
current_index = 0

while true
  break if current_index > my_array.length
  puts "I'm looping!"
  current_index += 1
end

#returns
# I'm looping!
# I'm looping!
# I'm looping!

my_array = ["Hello", "there", "friend!"]
current_index = 0

while current_index < my_array.length do
  puts my_array[current_index]
  current_index += 1
end
# puts
# Hello
# there
# friend!


my_array = ["Hello", "there", "friend!"]

my_array.each do
  puts "I'm looping!"
end
#I'm looping!
# I'm looping!
# I'm looping!
#  => ["Hello", "there", "friend!"]

my_array = ["Hello", "there", "friend!"]

my_array.each do |element|
  puts element
end
#
# Hello
# there
# friend!
#  => ["Hello", "there", "friend!"]

list_of_numbers = [17, 2, -1, 88, 7]
accumulator = []

list_of_numbers.each do |number|
  if number < 10
    accumulator.push(number)
  end
end

accumulator

#[2, -1, 7]
#list of numbers is not altered in any way

words = ["Hello", "World!"]

words.include?("Hello")
#return true 
