require 'io/console'

def game_instructions
  puts "連打ゲーム"
  puts "5秒間、10秒間、15秒間、または20秒間で何回Aキーを連打できるかチャレンジしよう"
end

def start_game
  puts "秒数を選択してください: 5秒 10秒 15秒 20秒"
  mode = gets.chomp.downcase
  duration = case mode
             when "瞬発モード", "5秒" then 5
             when "10秒モード", "10秒" then 10
             when "15秒モード", "15秒" then 15
             when "耐久モード", "20秒" then 20
             else 10
             end

  puts "準備ができたらSキーを押してください。"
  loop do
    key = STDIN.getch
    break if key.downcase == 's'
  end

  puts "ゲームスタート! Aキーを連打してください。"
  count = 0
  start_time = Time.now

  while Time.now - start_time < duration
    key = STDIN.getch
    count += 1 if key.downcase == 'a'
  end

  elapsed_time = Time.now - start_time
  puts "結果発表！"
  puts "Aキーを押した回数: #{count}回"
  puts "一秒間における連打数: #{(count / elapsed_time).round(2)}回"
end

game_instructions
start_game