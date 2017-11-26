
def greeter
puts "please enter your name"
name = gets.chomp.capitalize
if name.start_with?('S')
  puts name.upcase
else
  puts "Hi #{name} "
end
end
