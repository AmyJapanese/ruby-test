# allreplace.rb

def all_replace(input_string, target_word, replacement_word)
  input_string.gsub(target_word, replacement_word)
end

puts "Enter the string:"
input_string = gets.chomp

puts "Enter the word to be replaced:"
target_word = gets.chomp

puts "Enter the replacement word:"
replacement_word = gets.chomp

result = all_replace(input_string, target_word, replacement_word)
puts "Result: #{result}"