require 'date'

def display_calendar(year, month)
  first_day = Date.new(year, month, 1)
  last_day = Date.new(year, month, -1)

  puts "      #{year}年 #{month}月"
  puts "日 月 火 水 木 金 土"

  print "   " * first_day.wday

  (first_day..last_day).each do |date|
    print date.day.to_s.rjust(2) + " "
    print "\n" if date.saturday?
  end

  print "\n"
end

def get_valid_input(prompt, min, max)
  loop do
    puts prompt
    input = gets.chomp
    if input.match?(/^\d+$/)
      value = input.to_i
      return value if value >= min && value <= max
    end
    puts "無効な入力です。もう一度入力してください。"
  end
end

year = get_valid_input("表示したい年を入力してください:", 1, 9999)
month = get_valid_input("表示したい月を入力してください:", 1, 12)

display_calendar(year, month)