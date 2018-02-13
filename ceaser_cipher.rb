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
