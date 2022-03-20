# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

#   > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"
# Quick Tips:

# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.


# First approach
def caesar_cipher(string, shift)
  letters = ("a".."z").to_a
  result = ''

  string.each_char do |char|
    isCapital = char == char.upcase
    if char == " "
      result += " "
    elsif letters.include?(char.downcase)
      currentIndex = letters.index(char.downcase) 
      newIndex = currentIndex + shift
      isCapital ? result += letters[newIndex % 26].upcase :  result += letters[newIndex % 26].downcase
    else
      result += char
    end
  end
  result
end

puts caesar_cipher("Alex Maldonado", -17)

=begin
Sudo Code

1. Make an array of lowercase alphabet
2. Initialize an empty string variable 'result' to store answer
3. Iterate over string using #each_char and keep track if current char isCapital or not. 
4. If char is an empty space, add space to the result string
5. elsif char.downcase is in the array, find index of current char (make sure to downcase it. Our array only has downcased letters) and the newIndex which is currentIndex + shift 
6. Use isCapital to determine whether to add an upcase or downcase letter to result string. Use ternary operator
7. Else if the string is not a space or letter, add char to the result string (this would be any symbols or any other character)
8. Return result
=end

