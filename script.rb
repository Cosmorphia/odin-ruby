def caesar_cipher(string, shift)
  letters = ("a".."z").to_a

  string.chars.map do |character|
    is_not_letter = letters.none? {|letter| character.casecmp?(letter)}
    next character if is_not_letter
    letter_index = letters.index(character.downcase)
    shifted_index = letter_index + shift
    shifted_index = shifted_index - 26 if shifted_index > 26
    shifted_letter = letters[shifted_index]
    next shifted_letter.upcase if character == character.upcase
    shifted_letter
  end
  .join("")
end

puts caesar_cipher("What a string!", 5)