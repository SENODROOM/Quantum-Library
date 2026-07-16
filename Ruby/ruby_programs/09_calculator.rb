def calculate(a, op, b)
  case op
  when "+" then a + b
  when "-" then a - b
  when "*" then a * b
  when "/"
    raise ZeroDivisionError, "Cannot divide by zero" if b.zero?
    a.to_f / b
  else
    raise ArgumentError, "Unknown operator: #{op}"
  end
end

puts "Simple Calculator (enter like: 5 + 3)"
puts "Enter expression:"
input = gets.chomp

parts = input.split
if parts.length == 3
  a, op, b = parts[0].to_f, parts[1], parts[2].to_f
  begin
    result = calculate(a, op, b)
    puts "Result: #{result}"
  rescue StandardError => e
    puts "Error: #{e.message}"
  end
else
  puts "Invalid input format. Use: number operator number"
end
