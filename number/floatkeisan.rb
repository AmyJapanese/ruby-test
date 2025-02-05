def calculate(num1, num2, operation)
  case operation
  when "add"
    num1 + num2
  when "subtract"
    num1 - num2
  when "multiply"
    num1 * num2
  when "divide"
    if num2 != 0
      num1 / num2
    else
      "Cannot divide by zero"
    end
  else
    "Invalid operation"
  end
end

puts "Enter the first number:"
num1 = gets.chomp.to_f

puts "Enter the second number:"
num2 = gets.chomp.to_f

puts "Enter the operation (add, subtract, multiply, divide):"
operation = gets.chomp

result = calculate(num1, num2, operation)
puts "The result is: #{result}"