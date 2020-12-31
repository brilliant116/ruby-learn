### BEGIN and END Blocks

A program may include multiple BEGIN and END blocks. BEGIN blocks are executed in the order they are encountered. END blocks are executed in reverse order.

```ruby
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
```

output

```
BEGIN code block 1
BEGIN code block 2
main code block
END code block 2
END code block 1
```
