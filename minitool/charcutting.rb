def cut_string(input_string, start_index, length)
  input_string[start_index, length]
end

puts "文字列を入力してください:"
input_string = gets.chomp

puts "開始位置を入力してください (0から始まります):"
start_index = gets.chomp.to_i

puts "切り取る文字数を入力してください:"
length = gets.chomp.to_i

result = cut_string(input_string, start_index, length)
puts "切り取った文字列: #{result}"