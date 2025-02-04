begin #自分の年令
  print "あなたの年齢を入力してください: "
  my_str = gets.chomp
  my_age_int = Integer(my_str)
rescue ArgumentError
  puts "エラー: 数字を入力してください"
end

begin #相手の年齢
  print "相手の年齢を入力してください: "
  other_str = gets.chomp
  other_int = Integer(other_str)
rescue ArgumentError
  puts "エラー: 数字を入力してください"
end

# 年齢差を計算
age_diff = (my_age_int - other_int)

age_diff_abs = age_diff.abs

if age_diff >= 0 #年上のばあい
  print("あなたは相手より#{age_diff_abs}歳年上です")
else #年下の場合
  print("あなたは相手より#{age_diff_abs}歳年下です")
end