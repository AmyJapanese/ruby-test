# sabun.rb

def compare_and_difference(num1, num2)
  if num1 > num2
    larger = num1
    smaller = num2
  else
    larger = num2
    smaller = num1
  end

  difference = larger - smaller

  puts "Larger number: #{larger}"
  puts "Smaller number: #{smaller}"
  puts "Difference: #{difference}"
end

puts "Enter the first number:"
num1 = gets.to_i

puts "Enter the second number:"
num2 = gets.to_i

compare_and_difference(num1, num2)