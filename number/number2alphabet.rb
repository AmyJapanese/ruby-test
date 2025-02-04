def number_to_alphabet(number)
  alphabet = ('a'..'z').to_a
  result = ''

  while number > 0
    number -= 1
    result = alphabet[number % 26] + result
    number /= 26
  end

  result
end

def get_positive_integer
  loop do
    puts "数字を入力:"
    input = gets.chomp
    if input =~ /^\d+$/ && input.to_i > 0
      return input.to_i
    else
      puts "正の整数でお願いします"
    end
  end
end

input = get_positive_integer
puts "アルファベットにすると: #{number_to_alphabet(input)}"