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
