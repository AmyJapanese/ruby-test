puts "分を入力してください:"
minutes = gets.to_i

puts "秒を入力してください:"
seconds = gets.to_i

total_seconds = (minutes * 60) + seconds

while total_seconds > 0
  minutes_left = total_seconds / 60
  seconds_left = total_seconds % 60
  print "\r残り時間: #{minutes_left}分 #{seconds_left}秒"
  sleep(1)
  total_seconds -= 1
end

puts "\nタイマーが終了しました！"