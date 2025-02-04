require 'io/console'

counter = 0
running = true

Thread.new do #カウンター本体
  while true do
    if running
      print "\r#{counter}\e[K"
      counter += 1
      sleep 1
    end
  end
end

while true #キー入力
  key = STDIN.getch

  case key
  when 's' #止める
    running = false
    puts "\n一時停止しました. 「B」キーで停止解除、「Q」キーで終了します"
  when 'b' #再起動
    if running
      #カウントが止まってない場合、何も実行しない
    else
      running = true
      puts "\nまたカウントします"
    end
  when 'q'
    puts "\nカウントを終了しました。経過時間は#{counter}秒でした"
    break
  end
end