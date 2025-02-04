def extract_initials(sentence)
  initials = sentence.split.map { |word| word[0] }.join
  formatted_initials = initials.scan(/.{1,3}/).join(' ')
  formatted_initials
end

puts "Enter a sentence:"
sentence = gets.chomp
puts "Extracted initials: #{extract_initials(sentence)}"