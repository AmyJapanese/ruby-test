require 'io/console'

# 音速 (m/s)
SPEED_OF_SOUND = 343.0

puts "Aキーを長押しして離すまでの時間から、雷の距離を計算します。"
puts "Aキーを押して、落雷を効いた瞬間に離してください。"

# Aキーが押されるのを待つ
puts "Aキーを押してください..."
STDIN.getch until STDIN.getch == 'a'

# Aキーが離されるのを待つ
start_time = Time.now
puts "Aキーを離してください..."
STDIN.getch until STDIN.getch != 'a'
end_time = Time.now

# 時間差を計算
elapsed_time = end_time - start_time

# 距離を計算
distance = SPEED_OF_SOUND * elapsed_time

puts "雷の距離は約 #{distance.round(2)} メートルです。"