a = 0
b = 1

puts a
puts b

i = 0

while i < 8
    c = a + b
    puts c
    a = b
    b = c
    i = i + 1
end