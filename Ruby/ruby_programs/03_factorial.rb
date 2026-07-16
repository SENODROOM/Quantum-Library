def factorial_recursive(n)
  return 1 if n <= 1
  n * factorial_recursive(n - 1)
end

def factorial_iterative(n)
  result = 1
  (2..n).each { |i| result *= i }
  result
end

puts "Enter a number:"
num = gets.chomp.to_i

puts "Recursive: #{factorial_recursive(num)}"
puts "Iterative: #{factorial_iterative(num)}"
