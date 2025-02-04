def add_commas(number)
  number.to_s.reverse.gsub(/(\d{3})/, '\1,').reverse
end

print "数値を入力してください: "
input = gets.chomp

if input =~ /^\d+$/
  number = input.to_i
  formatted_number = add_commas(number)
  puts "コンマつきの数値:\n#{formatted_number}"
else
  puts "有効な数値を入力してください。"
end