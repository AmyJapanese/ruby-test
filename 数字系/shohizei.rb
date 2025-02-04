def calculate_tax(amount, tax_rate)
  tax = amount * tax_rate / 100
  total_with_tax = amount + tax
  { tax_excluded: amount, tax_included: total_with_tax, tax_amount: tax }
end

puts "金額を入力してください:"
amount = gets.to_f

puts "税率を入力してください(例: 10%にしたい場合は「10」と入力してください):"
tax_rate = gets.to_f

result = calculate_tax(amount, tax_rate)

puts "税抜き金額: #{result[:tax_excluded]}円"
puts "税込み金額: #{result[:tax_included]}円"
puts "税込みのときの税: #{result[:tax_amount]}円"