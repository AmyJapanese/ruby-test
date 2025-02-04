def extract_first_and_last_characters(input)
  return "" if input.empty?
  first_chars = input[0, 10]
  last_chars = input[-10, 10]
  "#{first_chars}#{last_chars}"
end

puts "Enter a sentence:"
sentence = gets.chomp
result = extract_first_and_last_characters(sentence)
puts "First and last characters: #{result}"