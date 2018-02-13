# Implement a method #substrings that takes a word as the first argument and
# then an array of valid substrings (your dictionary) as the second argument.
# It should return a hash listing each substring (case insensitive) that was
# found in the original string and how many times it was found.

#   > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   > substrings("below", dictionary)
#   => { "below" => 1, "low" => 1 }
# Next, make sure your method can handle multiple words:

#   > substrings("Howdy partner, sit down! How's it going?", dictionary)
#   => { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }
# Quick Tips:

# Recall how to turn strings into arrays and arrays into strings.

def substrings(string, diction)
  results = {}
  strings = string.downcase.gsub(/[^a-z0-9\s]/, '').split(' ')
  diction.each do |word|
    strings.each do |str|
      if str.include? word
        if results.include? word
          results[word] += 1
        else
          results[word] = 1
        end
      end
    end
  end
  puts results
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings('Below', dictionary)
substrings("Howdy partner, sit down! How's it going? sit sit sit SIT", dictionary)
