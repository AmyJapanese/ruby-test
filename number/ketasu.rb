def digit_count(number)
  number.to_s.length
end

puts "数字を入力してください:"
input = gets.chomp.to_i
puts "入力された数字の桁数は #{digit_count(input)} です。"