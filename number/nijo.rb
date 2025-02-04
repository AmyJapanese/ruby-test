def multiply_and_display(a, b) #計算本体
  result = a
  puts "#{a} ^ 1 = #{a}" # 1回目の計算を表示

  (b - 1).times do |i|
    result *= a
    puts "#{a} ^ #{i + 2} = #{result}" # 2回目以降の計算を表示
  end
end

#入力部分
puts "元の数字を入力してください："
a = gets.chomp.to_i

puts "何回かけたいか入力してください："
b = gets.chomp.to_i

#計算実行
multiply_and_display(a, b)