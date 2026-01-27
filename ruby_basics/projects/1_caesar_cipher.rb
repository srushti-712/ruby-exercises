# requirement : 
#  caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"
# So convert the string based on the number of positions to move


# Logic: 
# transform each letter while traversing
# transformation logic : 
#   - convert the char -> int (ASCII) note the case of the letter
#   - get the ascii of char (eg: 'W' = 87) 
#   - ascii_con =  ascii -  start_char (A / a based on case) = (87 - 65 = 22 )
#   - c_shift = (ascii_con + shift) % 26  = (27 % 26 = 1)
#   - shift start_char by ascii_con = ((A) 65 +1 ) = 66 (B)  

### Dry run : 
# char = h 
# ascii_h = 104 , start_char (a) = 97 
# ascii_con = 104 - 97 = 7
# c_shift = (ascii_con + shift) % 26  = ((7+5) % 26 = 12) 
# start_char + c_shift = 97 + 12 =  109 = 'm' 
# So the logic works for upper and lower case wth the wrapping !!


def caesar_cipher(string, shift)
  cipher = ""
  string.each_char do |char|
    # if alphabetic only then apply cipher
    if char.upcase == char.downcase
      cipher << char
    else 
      ascii_char = char.ord
      start_char = ascii_char.between?('a'.ord, 'z'.ord) ? 'a' : 'A'
      start_char_ascii = start_char.ord
      ascii_offset = ascii_char - start_char_ascii # the difference in the 'a'/'A' and the char 
      c_shift = (ascii_offset + shift) % 26 
      r = (c_shift + start_char_ascii).chr
      cipher = cipher + r
    end
  end
  cipher
end

rs = caesar_cipher("What a string!", 5)

puts(" result :  #{rs}")

