def remove_duplicate_chars(str) #取り除き関数
  result = ""
  seen = {}
  
  str.each_char do |char|
    unless seen[char]
      result << char
      seen[char] = true
    end
  end
  
  result
end

puts ("文字列を入力してください")
input_str = gets.chomp
puts remove_duplicate_chars(input_str) 