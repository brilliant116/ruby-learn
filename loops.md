```ruby
i = 0
num = 5

while i < num do
    puts "inside the loop i = #{i}"
    i += 1
end
```

```ruby
i = 0
num = 5

begin
    puts "inside the loop i = #{i}"
    i += 1
end while i < num
```

```ruby
i = 0
num = 5

until i >= num do
    puts "inside the loop i = #{i}"
    i += 1
end
```

```ruby
i = 0
num = 5

begin
    puts "inside the loop i = #{i}"
    i += 1
end until i >= num
```

# for statement

```ruby
for i in 0..5
    puts "value of local variables is #{i}"
end

(0..5).each do |i|
    puts "value of local variables is #{i}"
end
```

# break statement

```ruby
for i in 0..5
    if i > 2
        puts "\n"
        break
    end
    puts "value of local variables is #{i}"
end
```

# next statement

```ruby
for i in 0..5
    if i <= 2 then
        next
    end
    puts "value of local variables is #{i}"
end
```

### redo statement

Restarts this iteration of the most internal loop, without checking loop condition. Restarts yield or call if called within a block.

```ruby
for i in 0..5
    if i < 2
        puts "value of local variables is #{i}"
        redo
    end
end
```

```
Value of local variable is 0
Value of local variable is 0
............................
```

### retry statement

If retry appears in rescue clause of begin expression, restart from the beginning of the begin body.

If retry appears in the iterator, the block, or the body of the for expression, restarts the invocation of the iterator call. Arguments to the iterator is re-evaluated.

```ruby
for i in 0..5
    retry if i > 2
puts "value of local variables is #{i}"
end
```

```
Value of local variable is 1
Value of local variable is 2
Value of local variable is 1
Value of local variable is 2
Value of local variable is 1
Value of local variable is 2
............................
```
