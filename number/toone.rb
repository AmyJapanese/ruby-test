def process_number(n)
  steps = 0
  until n == 1
    if n.even?
      n /= 2
    else
      n = n * 3 + 1
    end
    puts n
    steps += 1
  end
  steps
end

puts "数字を入力してください:"
number = gets.to_i
result = process_number(number)
puts "1になるまでの回数: #{result}"