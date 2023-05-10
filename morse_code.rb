class MorseDecoder
  @@morse_to_char = {
    ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--" => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z"
  }

  def decode_char(morse)
    @@morse_to_char.fetch(morse)
  end

  def decode_word(morse_word)
    morse_arr = morse_word.split(' ')
    create_word(morse_arr)
  end
def decode_full_message(message)
    decoded_message = ''
    message_words = message.split("   ")
    message_words.each do |word|
      char_array = word.split(" ")
      decoded_message << " " << create_word(char_array)
    end
    decoded_message
  end
  private
  def create_word(morse_array)
    word = ''
    morse_array.each {|morse| word << decode_char(morse)}
    word
  end
end