
def greeter
puts "please enter your name"
name = gets.chomp.capitalize
name.start_with?('S') ? name.upcase : "Hi #{name} "
end
