def caesar_cipher(string, shift)
  upp = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  low = "abcdefghijklmnopqrstuvwxyz"

  cipher = string.chars
                 .map do |letter|
                    if upp.include?(letter)
                      upp[(upp.index(letter) + shift) % 26]
                    elsif low.include?(letter)
                      low[(low.index(letter) + shift) % 26]
                    else
                      letter
                    end
                end
  puts "Original: #{string}"
  puts "--------------------------------"
  puts "Caesar Cipher: #{cipher.join}"
end

caesar_cipher("What a string!", 5)