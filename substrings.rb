def substrings(string, dictionary)
  # takes a string and a dictionary of words
  # returns a hash with the number that each substring
  # appears in the main string

  special_char = "~`@#%^&*()_-+={}[]|\:;\"'<,>.?/$"

  string.each_char do |char|
    string.delete!(char) if special_char.include?(char)
  end

  split_words = string.split

  dict_counter = {}

  split_words.each do |word|
    word = word.downcase

    dictionary.each do |sub|
      if dict_counter.include?(sub)
        dict_counter[sub] += 1 if word.include?(sub)
      else dict_counter[sub] = 1 if word.include?(sub)
      end
    end
  end
  dict_counter
end
