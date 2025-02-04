# departsentence.rb

def split_sentences(text)
  sentences = text.split('。')
  sentences.each do |sentence|
    puts sentence unless sentence.empty?
  end
end

puts "文章を入力してください："
input_text = gets.chomp
split_sentences(input_text)