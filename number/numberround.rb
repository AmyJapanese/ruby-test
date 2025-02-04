def round_number(number, precision)
  factor = 10**precision
  (number * factor).round / factor.to_f
end

puts "Enter a number:"
number = gets.to_f

puts "Enter the number of decimal places to round to:"
precision = gets.to_i

rounded_number = round_number(number, precision)
puts "Rounded number: #{rounded_number}"