# frozen_string_literal: true

def caesar_cipher(string, shift, result = '')
  string.each_char do |char|
    base = char.ord < 91 ? 65 : 97

    if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      shifted = (((char.ord - base) + shift) % 26) + base
      result += shifted.chr
    else
      result += char
    end
  end
  result
end

puts caesar_cipher('What a string!', 5)
