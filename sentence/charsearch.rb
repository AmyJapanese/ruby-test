def search_word_in_sentence(sentence, word)
  occurrences = sentence.scan(/.{0,5}#{word}.{0,5}/)
  if occurrences.empty?
    puts "ありませんでした"
  else
    puts "発見回数: #{occurrences.size}"
    occurrences.each do |context|
      puts "発見した周囲の文字: #{context}"
    end
  end
end

puts "文章Aを入力してください:"
sentence = gets.chomp
puts "単語Bを入力してください:"
word = gets.chomp

search_word_in_sentence(sentence, word)