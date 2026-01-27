# Problem : 
# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# substrings("below", dictionary)
# res { "below" => 1, "low" => 1 }


# Logic : 
# for every word in the dict array we want to see how many times it has appeared in the string (even as substrings).
# So loop over the dict -> for every word in dict , for every word in the string check if the substring exists in the string 
# SO include? could be used -> word_from_string.include?(dict[i]) if yes then count of dict[i]++


def substrings(str, dict)
  count_hash = {}
  str_array = str.split(" ")
  dict.each do |word|
    word_count = 0
    str_array.each do |str_word|
      word_count += 1 if str_word.include?(word)
    end
    count_hash[word] = word_count unless word_count ==0
  end
  count_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts(substrings("below", dictionary))
