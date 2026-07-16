def fibonacci(count)
  sequence = [0, 1]
  return sequence.take(count) if count <= 2

  (2...count).each do |i|
    sequence << sequence[i - 1] + sequence[i - 2]
  end
  sequence
end

n = 15
puts "First #{n} Fibonacci numbers:"
puts fibonacci(n).join(", ")
