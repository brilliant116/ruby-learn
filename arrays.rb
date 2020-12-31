arr = Array.new

arr = Array.new(20)

puts arr.size
puts arr.length

arr = Array.new(4, "hello")
puts "#{arr}"

nums = Array.new(10) {|e| e = e * 2}
puts "#{nums}"

nums = Array.[](1, 2, 3)
puts "#{nums}"

nums = Array[1, 2, 3, 4, 5]
puts "#{nums}"

nums = [1, 2, 3, 4, 5]
puts "#{nums}"

nums = Array(0..9)
puts "#{nums}"
puts nums

nums = Array(1..7)
num = nums.at(4)
puts "#{num}"
