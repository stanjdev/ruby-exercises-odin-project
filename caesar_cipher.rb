def caesar_cipher(string, shift_value)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  new_string = ''
  string.each_char do |char|
    if !alphabet.include? char.downcase
      new_string << char
      next
    end

    idx = alphabet.index(char.downcase)
    shifted_index = shift_value + idx
    if shifted_index > alphabet.length - 1
      shifted_index = shifted_index - alphabet.length
    end
    if char != char.downcase
      new_string << alphabet[shifted_index].upcase
    else
      new_string << alphabet[shifted_index]
    end
  end
  puts new_string
  new_string
end

# caesar_cipher("What a string!", 5)

# 30 minutes DONE

# alphabet string
# loop through input string, get index position of input string relative to alphabet string using index_of method, add shift_value to index to get the shifted char, switch it in place,
# for out of bounds indexes beyond 26, subtract alphabets.length from it so it goes back around
# capitalized letters check at each first iteration, to keep the resulting char capped as well.
# ignore spaces, numbers, and symbols other than alphabet







