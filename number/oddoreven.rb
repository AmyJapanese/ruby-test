def odd_or_even(number)
  if number % 2 == 0
    puts "#{number}は偶数です。"
  else
    puts "#{number}は奇数です。"
  end
end

puts "数値を入力してください:"
input = gets.chomp.to_i
odd_or_even(input)