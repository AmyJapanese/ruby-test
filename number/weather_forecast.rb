def weather_forecast(precipitation_chance)
  case precipitation_chance
  when 0
    "晴れるでしょう"
  when 1..20
    "対策することはないでしょう。折り畳み傘で十分です"
  when 21..50
    "ちょっと心配した方が良いでしょう"
  when 51..80
    "傘を準備しましょう"
  when 81..100
    "大雨になるでしょう"
  else
    "０から１００で数字を入力してください"
  end
end

def get_precipitation_chance
  loop do
    puts "降水確率を整数で入力してください:"
    input = gets.chomp
    if input.match?(/^\d+$/) && input.to_i.between?(0, 100)
      return input.to_i
    else
      puts "０から１００で数字を入力してください"
    end
  end
end

precipitation_chance = get_precipitation_chance
puts weather_forecast(precipitation_chance)