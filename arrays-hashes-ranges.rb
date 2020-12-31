arr = [ "hello", 10, 3.14, -1.50, ]

arr.each do |i|
    puts i
end

hash = {"red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f}

hash.each do |key, value|
    print key, " is ", value, "\n"
end

range = (1..5)

range.each do |n|
    print n, ' '
end