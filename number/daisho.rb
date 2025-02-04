def sort_numbers(numbers, order) #並び替え本体
  case order
  when "大きい順"
    numbers.sort.reverse
  when "小さい順"
    numbers.sort
  when "ランダム"
    numbers.shuffle
  else
    raise "無効な順序指定です。"
  end
end

def ask_order #並び替え順序の入力
  puts "並び替えの順序を指定してください（「大きい順」「小さい順」「ランダム」）:"
  order = gets.chomp
  case order
  when "大きい順", "小さい順", "ランダム"
    return order
  else
    puts "その順序指定は未対応です"
    order = ask_order
  end
end

def ask_numbers #数字入力
  puts "数字を入力してください（スペース区切り）:"
  input = gets.chomp
  if input.match?(/^[0-9 ]+$/)
    return input.split.map(&:to_i)
  else
    puts "半角数字とスペースだけ入力してください"
    ask_numbers
  end
end

input = ask_numbers
order = ask_order #順序入力関数の実行

sorted_numbers = sort_numbers(input, order) #並び替え関数の実行
puts "並び替えた結果: #{sorted_numbers.join(' ')}"