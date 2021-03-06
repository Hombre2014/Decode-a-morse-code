def decode_char(code)
  decoder = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
              '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
              '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
              '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => '1',
              '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
              '---..' => '8', '----.' => '9', '-----' => '0' }
  decoder[code]
end

puts decode_char('.-')

def decode_word(code)
  result = ''
  arr = code.split
  arr.each do |char|
    result += decode_char(char)
  end
  result
end

puts decode_word('-- -.--')

def decode(code)
  result = ''
  arr = code.split('   ')
  arr.each { |item| result += " #{decode_word(item)}" }
  result.strip
end

puts decode('-- -.--   -. .- -- .')

# Decode the message from the old bottle:
puts decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
