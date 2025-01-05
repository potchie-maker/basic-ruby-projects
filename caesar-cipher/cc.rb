# def caesar_cipher(string, shift)
#   upp = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#   low = "abcdefghijklmnopqrstuvwxyz"

#   cipher = string.chars.map do |letter|
#     if upp.include?(letter)
#       upp[(upp.index(letter) + shift) % 26]
#     elsif low.include?(letter)
#       low[(low.index(letter) + shift) % 26]
#     else
#       letter
#     end
#   end

#   puts "Original: #{string}"
#   puts "--------------------------------"
#   puts "Caesar Cipher: #{cipher.join}"
# end

# rubocop: disable Metrics/AbcSize
def caesar_cipher(string, shift)
  upp = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  low = "abcdefghijklmnopqrstuvwxyz"

  # shift = shift % 26

  u_shift = upp.chars.rotate(shift)
  l_shift = low.chars.rotate(shift)

  cipher = string.chars.map do |letter|
    if upp.include?(letter)
      u_shift[upp.index(letter)]
    elsif low.include?(letter)
      l_shift[low.index(letter)]
    else
      letter
    end
  end

  puts "Original: #{string}"
  puts "--------------------------------"
  puts "Caesar Cipher: #{cipher.join}"
end
# rubocop: enable Metrics/AbcSize

caesar_cipher("What a string!", 5)
