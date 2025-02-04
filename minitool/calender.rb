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

puts "表示したい年を入力してください:"
year = gets.to_i
puts "表示したい月を入力してください:"
month = gets.to_i

display_calendar(year, month)