# frozen_string_literal: true

vowel_letters = {}

white_list = %w[a e u i o y]
counter = 0

('a'..'z').each do |letter|
  counter += 1
  vowel_letters[letter] = counter if white_list.include?(letter)
end

puts vowel_letters
