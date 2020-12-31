puts %{ruby is fun}
puts %Q{ruby is fun}
puts %q[ruby is fun]
puts %x!ls!

str = String.new("THIS IS US")
str_downcase = str.downcase

puts "#{str_downcase}"

