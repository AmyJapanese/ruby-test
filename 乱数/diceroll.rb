rolls = 10
total_rolls = 0

while rolls > 0
  dice = rand(1..6)
  puts(dice)
  total_rolls += 1
  rolls -= 1
  rolls += 1 if dice == 6
end

puts "サイコロを振った回数: #{total_rolls}"