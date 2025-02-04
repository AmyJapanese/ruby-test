def add_commas(number)
  number.to_s.reverse.gsub(/(\d{3})/, '\1,').reverse
end

begin #最初の数字
  print "１つめの数字を入力してください:"
  first_str = gets.chomp
  first_int = Integer(first_str)
rescue ArgumentError
  puts "エラー: 数字を入力してください"
  retry
end

while true #計算記号
  print "どんな計算をしますか？(たす/ひく/かける/わる):"
  calc_symbol = gets.chomp
  if ["たす", "ひく", "かける", "わる"].include?(calc_symbol)
    break # リストに含まれていればループを抜ける
  else
    puts "リストの単語を入力してください"
  end
end

begin #次の数字
  print "２つめの数字を入力してください:"
  second_str = gets.chomp
  second_int = Integer(second_str)
rescue ArgumentError
  puts "エラー: 数字を入力してください"
  retry
end

#計算本体
if calc_symbol == "たす" #足し算
  result_symbol = "+"
  calc_result = first_int + second_int
elsif calc_symbol == "ひく" #引き算
  result_symbol = "-"
  calc_result = first_int - second_int
elsif calc_symbol == "かける" #掛け算
  result_symbol = "*"
  calc_result = first_int * second_int
elsif calc_symbol == "わる" #割り算
  result_symbol = "÷"
  calc_result = first_int / second_int
  calc_remain = first_int % second_int
end

result_comma = add_commas(calc_result)
remain_comma = add_commas(calc_remain)
#出力
if calc_symbol == "わる"
  puts("計算結果:")
  puts(first_str + result_symbol + second_str + "=" + result_comma)
  puts("あまり:#{remain_comma}")
else
  puts("計算結果:")
  puts(first_str + result_symbol + second_str + "=" + result_comma)
end