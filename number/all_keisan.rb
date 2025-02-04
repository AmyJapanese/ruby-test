def calculate(a, b)
  puts "足し算 (A + B): #{a + b}"
  puts "引き算 (A - B): #{a - b}"
  puts "引き算 (B - A): #{b - a}"
  puts "掛け算 (A * B): #{a * b}"
  if b != 0
    puts "割り算 (A / B): #{a / b.to_f} (あまり: #{a % b})"
  else
    puts "割り算 (A / B): 割り算できません (Bが0です)"
  end
  if a != 0
    puts "割り算 (B / A): #{b / a.to_f} (あまり: #{b % a})"
  else
    puts "割り算 (B / A): 割り算できません (Aが0です)"
  end
end

puts "2つの数値を入力してください。"
print "A: "
a = gets.to_f
print "B: "
b = gets.to_f

calculate(a, b)