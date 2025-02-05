def display_char_code(char)
  puts "Character: #{char}"
  puts "Unicode Codepoint: #{char.ord}"
end

puts "Enter a character:"
input_char = gets.chomp

if input_char.length == 1
  display_char_code(input_char)
else
  puts "Please enter a single character."
end