require 'io/console'

class EndlessRenda
  def initialize
    @count = 0
    @start_time = Time.now
    @last_time = @start_time
    @difficulty = select_difficulty
  end

  def select_difficulty
    puts "Select difficulty: Easy (E), Normal (N), Hard (H), Impossible (I), Gamer (G)"
    loop do
      char = STDIN.getch
      case char.downcase
      when 'e' then return 1.0 / 3
      when 'n' then return 1.0 / 5
      when 'h' then return 1.0 / 7
      when 'i' then return 1.0 / 9
      when 'g' then return 1.0 / 11
      else
        puts "Invalid selection. Please select again: Easy (E), Normal (N), Hard (H), Gamer (G), Impossible (I)"
      end
    end
  end

  def start
    puts "Press 'S' key to start the game."
    loop do
      char = STDIN.getch
      if char.downcase == 's'
        puts "Starting in 3 seconds..."
        3.downto(1) do |i|
          puts i
          sleep 1
        end
        puts "Press 'A' key as fast as you can. If you press slower than the selected difficulty, it's game over!"
        break
      end
    end

    loop do
      char = STDIN.getch
      if char.downcase == 'a'
        current_time = Time.now
        @count += 1
        if current_time - @last_time > @difficulty
          game_over
          break
        end
        @last_time = current_time
      end
    end
  end

  def game_over
    elapsed_time = Time.now - @start_time
    puts "Game Over! You pressed 'A' #{@count} times in #{elapsed_time.round(2)} seconds."
  end
end

game = EndlessRenda.new
game.start