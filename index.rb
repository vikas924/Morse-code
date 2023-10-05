MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(param)
  MORSE_CODE[param]
end

puts decode_char('.-')

def decode_word(param_str)
  array_str = param_str.split
  word = []
  array_str.each do |param|
    word.push(decode_char(param))
  end
  word.join
end

puts decode_word('-- -.--')

def decode_message(param)
  words = param.split('   ')
  print words
  decoded_words = words.map do |word|
    characters = word.split
    decoded_characters = characters.map { |char| MORSE_CODE[char] || '?' }
    decoded_characters.join
  end
  decoded_words.join(' ')
end
message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts decode_message('-- -.--   -. .- -- .')
puts decode_message(message)
