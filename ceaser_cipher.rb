# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

#   > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"

# Quick Tips:
# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.

def caeser_cipher(string, key)
  changed = []
  string.downcase.scan(/./) do |i|
    j = if i.ord < 65
          i.ord
        else
          i.ord + key.to_i
        end
    j = (j % 122) + 96 if j > 122 # Wrap around if moved beyond z
    changed << j.chr
  end
  changed.join('').capitalize!
end

puts caeser_cipher('cat', 5)
puts caeser_cipher('word', 5)
puts caeser_cipher('Word hello how are you?', 3)
