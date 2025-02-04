require 'io/console'

puts "任意のキーを押して、どれぐらい長く押したかを測定します。"
puts "キーを押してから離してください..."

start_time = nil
end_time = nil

# キーが押された時の時間を記録
STDIN.raw do |stdin|
  stdin.getc
  start_time = Time.now
end

puts "キーを押したままにしてください..."

# キーが離された時の時間を記録
STDIN.raw do |stdin|
  stdin.getc
  end_time = Time.now
end

duration = end_time - start_time
puts "キーを押していた時間: #{duration}秒"