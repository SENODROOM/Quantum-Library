def reverse_string(str)
  str.reverse
end

def palindrome?(str)
  clean = str.downcase.gsub(/[^a-z0-9]/, "")
  clean == clean.reverse
end

words = ["racecar", "hello", "A man a plan a canal Panama", "ruby"]

words.each do |word|
  puts "#{word.ljust(35)} reversed: #{reverse_string(word).ljust(35)} palindrome? #{palindrome?(word)}"
end
