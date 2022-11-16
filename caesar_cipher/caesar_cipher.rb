def caesar_cipher(string, shift)
  result = ''
  string.each_byte do |char|
    if (char >= 65 && char <= 90) || (char >= 97 && char <= 122)
      temp = char + shift
      result += if temp > 122
                  (97 + (temp - 122) - 1).chr
                elsif temp > 90 && temp < 98
                  (65 + (temp - 90) - 1).chr
                else
                  temp.chr
                end
      next
    end
    result += char.chr
  end
  File.write('caesar_cipher_output.txt', result)
end

file_content = File.read('caesar_cipher.txt').split("\n")
caesar_cipher(file_content.last, file_content.first.to_i)
