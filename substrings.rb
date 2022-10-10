dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  substrs = Hash.new(0)
  string_array = string.downcase.split
  string_array.each do |string_word|
    dictionary.each do |dict_word|
      substrs[dict_word] += 1 if string_word.include?(dict_word)
    end
  end
  puts substrs
  substrs
end

substrings("below", dictionary)
# substrings("Howdy partner, sit down! How's it going?", dictionary)

# pseudo-pseudo
# process the input string first
# split long string so only words, split by space, non-alpha chars
# case insensitive
