
# input.txt
# This is a simple text file for testing purpose.

# sysread method
file = File.new("input.txt", "r")

if file
    content = file.sysread(20)
    puts content
else
    puts "unable to open file"
end

arr = IO.readlines("input.txt")
puts arr

# syswrite method
file = File.new("input.txt", "r+")

if file
    file.syswrite("ABC")
else
    puts "unable to open file"
end

arr = IO.readlines("input.txt")
puts arr

file = File.new("input.txt", "r+")

if file
    content = file.sysread(20)
    puts content
    # file pointer now is at the 21st character in the file
    file.syswrite("ABC")
else
    puts "unable to open file"
end

arr = IO.readlines("input.txt")
puts arr

if file
    file.syswrite("ABC")
    file.each_byte {|ch| putc ch; putc ?.}
else
    puts "unable to open file"
end

print "\n"

# IO.readlines method
arr = IO.readlines("input.txt")

puts arr
puts arr[0]
puts arr[1]

# IO.foreach method
IO.foreach("input.txt") {|line| puts line}

#File.rename("test1.txt", "test2.txt")

#File.delete("test3.txt")

file = File.new("test.txt", "w")
file.chmod(0755)

File.open("input.txt") if File::exist?("input.txt")

puts File.file?("test.txt")

puts File::directory?("/home")

puts File::directory?("/home/smith/.bashrc")

puts File.readable?("input.txt")
puts File.writable?("input.txt")
puts File.executable?("input.txt")

puts File::zero?("input.txt")

puts File::size?("input.txt")

# The ftype method identifies the type of the file by returning one of the following: file, directory, characterSpecial, blockSpecial, fifo, link, socket, or unknown.

puts File::ftype("input.txt")
puts File::ftype("/usr/bin/python")

puts File::ctime("input.txt") # create
puts File::mtime("input.txt") # modify
puts File::atime("input.txt") # access

Dir.chdir("/usr/bin")

puts Dir.pwd

puts Dir.entries("/home/smith").join(' ')

Dir.foreach("/home/smith") do |entry|
    puts entry
end

Dir["/home/smith/*"]

Dir.chdir("/home/smith")

Dir.mkdir("new_dir")

Dir.mkdir("new-dir", 755)

Dir.delete("new_dir")
Dir.unlink("new-dir")

require 'tmpdir'
    temp_file_name = File.join(Dir.tmpdir, "hello")
    temp_file = File.new(temp_file_name, "w")
    temp_file.puts "this is a temporary file"
    puts temp_file.path
    temp_file.close
    File.delete(temp_file_name)

require 'tempfile'
    file = Tempfile.new("hi")
    file.puts "a temporary file"
    puts file.path
    file.close