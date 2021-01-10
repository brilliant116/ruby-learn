puts Dir.pwd

begin
    file = open("/unexistant_file")
    if file
        puts "file opened successfully"
    end
rescue
    file = STDIN
end
print file, "==", STDIN, "\n"



# use raise statement
begin
    puts "i am before the raise"
    raise "an error has occured"
    puts "i am after the raise"
rescue
    puts "a am rescued"
end
puts "i am after the begin block"

begin
    file = open("/unexistant_file")
    if file
        puts "file opened successfully"
    end
rescue Exception => error
    puts error.message
    puts error.backtrace.inspect
end

begin
    raise "a test exception"
rescue Exception => error
    puts error.message
    puts error.backtrace.inspect
end


begin
    raise "a test exception"
rescue Exception => error
    puts error.message
    puts error.backtrace.inspect
ensure
    puts "ensure execution"
end


begin
    raise "a test exception"
rescue Exception => error
    puts error.message
    puts error.backtrace.inspect
else
    puts "congratulations, no error occured"
ensure
    puts "ensure execution"
end


def prompt_and_get(prompt)
    print prompt
    res = readline.chomp
    throw :quit_requested if res == "!"
    return res
end

catch :quit_requested do
    name = prompt_and_get("name: ")
    age = prompt_and_get("age: ")
end
prompt_and_get("name: ")


class File_save_error < StandardError
    attr_reader :reason
    def initialize(reason)
        @reason = reason
    end
end

File.open("test.rb", "w") do |file|
begin
    # write something
rescue
    raise File_save_error.new($!)
end
end