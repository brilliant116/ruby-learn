def test_block
    puts "you are in the method"
    yield
    puts "you are again back to the method"
    yield
end

test_block {
    puts "you are in the block"
}

def test_block
    yield 1
    puts "you are in the method test"
    yield 2, 3
end

test_block {
    |*test|
    for i in 0...test.length
        puts "you are i the block #{test[i]}"
    end
}

def test
    yield
end

test {puts "hello world"}

def test(&block)
    block.call
end

test {puts "hello world"}

BEGIN {
    puts "BEGIN code block 1"
}

BEGIN {
    puts "BEGIN code block 2"
}

END {
    puts "END code block 1"
}

END {
    puts "END code block 2"
}

puts "main code block"