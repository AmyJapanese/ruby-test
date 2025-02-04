class WordGuessingGame
  EASY_LIFE = 15
  NORMAL_LIFE = 12
  HARD_LIFE = 9
  IMPOSSIBLE_LIFE = 6

  def initialize
    @words = load_words_from_file("worddata.txt")
    @answer = @words.sample
    @masked_answer = "_" * @answer.length
    @attempts = 0
  end

  def load_words_from_file(filename)
    if File.exist?(filename)
      File.read(filename).split("\n")
    else
      puts "ファイルが見つかりませんでした。デフォルトの単語を使用します"
      ["search", "number", "comma", "hangman", "enjoy", "guessing", "gameplay", "alphabet","binary","weather","forecast"]
    end
  end

  def start
    puts "難易度を指定してください（ライフの数が変化します） Easy (15), Normal (12), Hard (9), Impossible (6)"
    difficulty = gets.chomp.downcase
    @life = case difficulty
            when "easy" then EASY_LIFE
            when "normal" then NORMAL_LIFE
            when "hard" then HARD_LIFE
            when "impossible" then IMPOSSIBLE_LIFE
            else NORMAL_LIFE
            end

    play
  end

  def play
    while @life > 0
      puts "単語： #{@masked_answer}"
      puts "ライフ：" + "♥" * @life
      puts "開く文字を入力するか、「final answer」と入力して単語を推測します。"
      input = gets.chomp.downcase

      if input == "final answer"
        final_answer
      else
        open_char(input)
      end

      if @masked_answer == @answer
        puts "正解！"
        puts "かかった手数: #{@attempts}"
        exit
      end
    end

    if @life == 0
      puts "ゲームオーバー！正解は #{@answer} でした"
      exit
    end
  end

  def open_char(char)
    @attempts += 1
    if @answer.include?(char)
      @answer.chars.each_with_index do |c, index|
        @masked_answer[index] = c if c == char
      end
    else
      @life -= 1
    end
  end

  def final_answer
    puts "ファイナルアンサー？："
    final_answer = gets.chomp.downcase
    if final_answer == @answer
      puts "正解！"
      puts "かかった手数: #{@attempts}"
      exit
    else
      @life -= 3
      puts "不正解！"
    end
  end
end

game = WordGuessingGame.new
game.start