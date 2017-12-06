# There is an array of strings below. Write a program that:
# * Prints all the strings out, each one on a separate line, except it:
#   * Doesn't print any string that is in all UPPERCASE letters.
#   * Prints `Less than 4` and then all the strings that are less than 4 characters long.
#   * Prints `4 to 6` and then all the strings that are 4, 5 or 6 characters long.
#   * Prints `More than 6` and then all the strings than are more than 6 characters long.

strings = ["giraffe", "ox", "LION", "tiger", "ape", "snake", "LEOPARD"]

# You can put your code here!

less_than_four = ['Less than four']
four_to_six = ['4 to 6']
more_than_6 = ['More than 6']

strings.delete_if{|string| string == string.upcase}

strings.each do |word|
  if word.size < 4
    less_than_four << word
  elsif word.size > 4 && word.size < 6
    four_to_six << word
  else word.size > 6
    more_than_6 << word
  end

end

puts less_than_four
puts four_to_six
puts more_than_6

# * Great job playing around in IRB to learn!
# * It's really useful to run your code as often as possible.  Try to get to the point where, every time you add or change one line, you run your code.  This lets you check that your code is right so you have a solid foundation to build on.  And it means if there's a bug, you know the bug is almost certainly in the line you just typed.
# * When debugging, try not to flail.  Flailing is making a code change because it *might* fix the bug.  When debugging, the most important thing is not to fix the bug, but to learn from trying to fix it.  Another way to put this is that it's important to have a good understanding of why the fix works.  A good way to focus on learning is to try things out in IRB, or get visibility to learn more about what is happening when your code runs.  Another good way to focus on learning is to only make a change when you're 90% sure it will work.  It's fine to be wrong! If that happens, just learn more and until you can think of a new fix that you're 90% sure will work.
#     * e.g. When you were getting the `less_than_four.join("\n")` into the right place early one.
#     * e.g. When you were getting the `<` and `>` signs correct.
# * Really nice job breaking down the problem into smaller pieces by removing the uppercase words first!
