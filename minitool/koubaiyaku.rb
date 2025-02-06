def gcd(a, b)
  while b != 0
    a, b = b, a % b
  end
  a
end

def lcm(a, b)
  (a * b) / gcd(a, b)
end

puts "2つの数値を入力してください:"
print "1つ目の数値: "
num1 = gets.to_i
print "2つ目の数値: "
num2 = gets.to_i

puts "最大公約数: #{gcd(num1, num2)}"
puts "最小公倍数: #{lcm(num1, num2)}"