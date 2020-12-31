i = 0
num = 5

while i < num do
    puts "inside the loop i = #{i}"
    i += 1
end


i = 0
num = 5

begin
    puts "inside the loop i = #{i}"
    i += 1
end while i < num

i = 0
num = 5

until i >= num do
    puts "inside the loop i = #{i}"
    i += 1
end

i = 0
num = 5

begin
    puts "inside the loop i = #{i}"
    i += 1
end until i >= num

# for statement
for i in 0..5
    puts "value of local variables is #{i}"
end

(0..5).each do |i|
    puts "value of local variables is #{i}"
end

# break statement
for i in 0..5
    if i > 2
        puts "\n"
        break
    end
    puts "value of local variables is #{i}"
end


# next statement
for i in 0..5
    if i <= 2 then
        next
    end
    puts "value of local variables is #{i}"
end

# redo statement

for i in 0..5
    if i < 2
        puts "value of local variables is #{i}"
        redo
    end
end

# retry statement

for i in 0..5
    retry if i > 2
puts "value of local variables is #{i}"
end