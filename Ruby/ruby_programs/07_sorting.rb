def bubble_sort(arr)
  arr = arr.dup
  n = arr.length
  loop do
    swapped = false
    (0...n - 1).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

numbers = [64, 25, 12, 22, 11, 90, 5]

puts "Original: #{numbers}"
puts "Bubble sorted: #{bubble_sort(numbers)}"
puts "Built-in sorted: #{numbers.sort}"
puts "Descending: #{numbers.sort.reverse}"
