def repeat_word(word, count)
  if count > 15
    puts "１５以下でお願いします"
    return
  end

  count.times { print word }
  puts
end

puts "単語を入力してください:"
word = gets.chomp

puts "回数を入力してください:"
count = gets.to_i

repeat_word(word, count)