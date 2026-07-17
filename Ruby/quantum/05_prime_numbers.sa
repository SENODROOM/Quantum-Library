def prime?(n)
  return false if n < 2
  (2..Math.sqrt(n)).none? { |i| n % i == 0 }
end

limit = 50
primes = (2..limit).select { |n| prime?(n) }

puts "Prime numbers up to #{limit}:"
puts primes.join(", ")
