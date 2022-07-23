#ASCII codes for Enhlish alphabet are in range of 097 to 122 (downcase)
#and 065 to 090 (uppercase). Common signs are between 032 and 063.

def caesar_cipher(string, shift, letters_in_ascii = [])
  string.each_byte { |letter| letters_in_ascii.push(letter) }
  if letters_in_ascii.all? { |letter| letter.between?(65, 90) || letter.between?(97, 122) || letter.between?(32, 63)} 
    cyphered_letters_in_ascii = letters_in_ascii.map do |letter|
      if (letter + shift).between?(91, 96) 
        letter = 64 + shift
      elsif (letter + shift) > 122
        letter = 96 + shift
      elsif letter.between?(32, 63)
        letter
      else 
        letter += shift
      end
    end
    new_string = (cyphered_letters_in_ascii.map { |letter| letter.chr}).join
    return "The encoded message reads '" << new_string << "'"
  else
    puts 'Some of the characters are not from English alphabet. Try again!'
  end
end

def terminal_interface_cc()
  puts "This is a caesar cipher encoder. Please enter the message to be encoded below: "
  string = gets.chomp
  puts "Excellent! Choose an amount of letters to shift to the right"
  shift = gets.chomp.to_i
  puts caesar_cipher(string, shift)
end

terminal_interface_cc