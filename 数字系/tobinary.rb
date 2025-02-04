def to_binary(number)
  if number.is_a?(String)
    return "文字列は無効です"
  elsif number == 0
    "0"
  else
    binary = ""
    while number > 0
      binary = (number % 2).to_s + binary
      number /= 2
    end
    binary
  end
end

# ユーザーに入力を促す
print "数値を入力してください: "
input = gets.chomp

# 入力を数値に変換し、エラー処理を行う
begin
  number = Integer(input)
  number_bin = to_binary(number)
  puts("変換結果#{number_bin}")
rescue ArgumentError
  puts "入力が無効です。数値を入力してください。"
end