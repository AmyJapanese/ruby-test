puts "数字を入力してください："
input = gets.chomp

begin
  num = Integer(input)
  hex_num = num.to_s(16)
  puts "16進数:#{hex_num}"
rescue ArgumentError
  puts "有効な数字を入力してください。"
end