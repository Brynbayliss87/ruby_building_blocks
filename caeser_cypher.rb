def shift_string(c, shift) 
  # helper method to move character along using ascii table
  c = c.ord
  if c + shift <= 122
    c += shift
  else
    c = c + shift - 122
       c = 96 + c
  end
  c.chr
end

def caeser(string, shift)
  # a method that takes a string and a shift factor 
  # and returns an encoded string
  # by shifting each character along by the factor

  caps = 'A'..'Z'
  newstring = ''
  chars = 'a'..'z'
  string.each_char do |c|
    if caps.include?(c)
      c = c.downcase
      c = shift_string(c, shift).upcase
      newstring += c  
    elsif  chars.include?(c)
      c = shift_string(c, shift)
      newstring += c
    else
      newstring += c
    end      
  end
  newstring
end

puts caeser("What A string!", 5)

