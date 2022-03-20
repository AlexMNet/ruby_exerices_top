=begin
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

  > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  > substrings("below", dictionary)
  => { "below" => 1, "low" => 1 }
Next, make sure your method can handle multiple words:

  > substrings("Howdy partner, sit down! How's it going?", dictionary)
  => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
Please note the order of your keys might be different.

Quick Tips:

Recall how to turn strings into arrays and arrays into strings.

Method recieves a word(s) <string> and an array of words
Method returns a hash of the words in the dictionary that appear in the stirng word(s)
=end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# Naive solution. Big O of N^2 due to nested loops
def substring(string, dictionary)
  downcasedString = string.downcase.split(' ')
  result = {}

  dictionary.each_with_index do |substring, idx|
    downcasedString.each_with_index do |word, idx|
      if word.include?(substring)
        result[substring] = (result[substring] || 0) + 1
      end
    end
  end
  result
end

puts substring('below', dictionary)
puts substring("Howdy partner, sit down! How's it going?", dictionary)