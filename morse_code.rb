class MorseDecoder
  attr_accessor :morse_to_char

  def initialize
    @morse_to_char = {
      '.-' => 'A',
      '-...' => 'B',
      '-.-.' => 'C',
      '-..' => 'D',
      '.' => 'E',
      '..-.' => 'F',
      '--.' => 'G',
      '....' => 'H',
      '..' => 'I',
      '.---' => 'J',
      '-.-' => 'K',
      '.-..' => 'L',
      '--' => 'M',
      '-.' => 'N',
      '---' => 'O',
      '.--.' => 'P',
      '--.-' => 'Q',
      '.-.' => 'R',
      '...' => 'S',
      '-' => 'T',
      '..-' => 'U',
      '...-' => 'V',
      '.--' => 'W',
      '-..-' => 'X',
      '-.--' => 'Y',
      '--..' => 'Z'
    }
  end

  def decode_char(morse)
    @morse_to_char.fetch(morse)
  end

  def decode_word(morse_word)
    morse_arr = morse_word.split
    create_word(morse_arr)
  end

  def decode_full_message(message)
    decoded_message = ''
    message_words = message.split('   ')
    message_words.each do |word|
      decoded_message << decode_word(word) << ' '
    end
    decoded_message
  end

  private

  def create_word(morse_array)
    word = ''
    morse_array.each { |morse| word << decode_char(morse) }
    word
  end
end

decoder = MorseDecoder.new
puts decoder.decode_char('.-')
puts decoder.decode_word('-- -.--')
puts decoder.decode_full_message('-- -.--   -. .- -- .')
puts decoder.decode_full_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
