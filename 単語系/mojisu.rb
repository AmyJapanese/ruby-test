def count_characters(input)
  input.length
end

puts "文字を入力してください:"
input = gets.chomp
puts "入力された文字数は#{count_characters(input)}です。"