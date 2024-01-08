# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(input, dictionary)
  result_hash = Hash.new(0)
  lowered = input.downcase

  dictionary.each do |word|
    matching_word = lowered.scan(word)
    number = matching_word.length
    result_hash[word] = number if number.positive?
  end
  result_hash
end

puts substrings('below', dictionary)
# { "below" => 1, "low" => 1 }

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
