# chardeleter.rb

def delete_word_from_text(text, word)
  text.gsub(/\b#{Regexp.escape(word)}\b/, '')
end

puts "Enter the text:"
input_text = gets.chomp

puts "Enter the word to delete:"
word_to_delete = gets.chomp

result_text = delete_word_from_text(input_text, word_to_delete)
puts "Resulting text:"
puts result_text