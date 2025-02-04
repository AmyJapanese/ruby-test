def to_exponential(number)
  format("%.2e", number)
end

puts "数字を入力してください:"
input = gets.chomp.to_f
puts "指数表記: #{to_exponential(input)}"