# each iterator
arr = [1, 2, 3, 4, 5]

arr.each do |i|
    puts i
end

# collect iterator
a = [1, 2, 3, 4, 5]
b = Array.new

b = a.collect
puts b
p b

b = a.collect{|x| x}

p b

a = [1, 2, 3, 4, 5]
b = a.collect{|x| 10 * x}

puts b