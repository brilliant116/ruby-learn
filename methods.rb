def test_print(a1 = "Ruby", a2 = "Perl")
    puts "The programming language is #{a1}"
    puts "The programming language is #{a2}"
end

test_print "C", "C++"
test_print

def test_return
    i = 1
    j = 2
    k = 3
return i, j, k
end

return_values = test_return
puts return_values

def sample(*test)
    puts "the number of parameters is #{test.length}"
    for i in 0...test.length
        puts "the parameter is #{test[i]}"
    end
end

sample "Ruby" "1" "A"
sample "Ruby", "1", "A"