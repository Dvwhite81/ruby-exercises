def is_uppercase(char)
  char.ord > 64 && char.ord < 91
end

def is_lowercase(char)
  char.ord > 96 && char.ord < 123
end

def is_letter(char)
  (is_lowercase(char)) || (is_uppercase(char))
end

def shift_char(char, factor)
  ascii = char.ord + factor
  if (is_lowercase(char) && ascii > 122) || (is_uppercase(char) && ascii > 90)
    ascii -= 26
  end
  ascii
end

def caesar_cipher(string, factor)
  result = ""
  arr = string.chars
  arr.each do |char|
    if is_letter(char)
      shifted = shift_char(char, factor)
      result += shifted.chr
    else
      result += char
    end
  end
  puts result
end

caesar_cipher("What a string!", 5)
