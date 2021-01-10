# ranges as sequences
range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a

puts "#{range1}"
puts "#{range2}"

digits = 0..9

puts digits.include?(5)

min = digits.min
puts "min value is #{min}"

max = digits.max
puts "max value is #{max}"

ret = digits.reject {|i| i < 5}
puts "rejected values are #{ret}"

digits.each do |digit|
    puts "in loop #{digit}"
end

# ranges as conditions
score = 70

result = case score 
    when 0..59 then "fail"
    when 60..69 then "pass"
    when 70..79 then "pass with merit"
    when 80..100 then "pass with distiction"
    else "invalid score"
end

puts result

# ranges as intervals
if (1..10) === 4
    puts "4 lies in (1..10)"
end

if (1..10).include?(4)
    puts "4 lies in (1..10)"
end

if ('a'..'j') === 'c'
    puts "'c' lies in ('a'..'j')"
end

if ('a'..'j') === 'z'
    puts "'z' lies in ('a'..'j')"
else
    puts "'z' is not in ('a'..'j')"
end