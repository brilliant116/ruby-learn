Count = 0
module Foo
    ::Count = 1 # set global
    Count = 2   # set local
end

puts Count      # global constant
puts Foo::Count # local "Foo" constant


String = " out there"

class Inside_one
    String = proc {"in there"}
    def where_is_String
        ::String + " inside one"
    end
end

class Inside_two
    String = " inside two"
    def where_is_String
        String
    end
end

puts Inside_one.new.where_is_String
puts Inside_two.new.where_is_String

puts Object::String
puts Object::String + Inside_two::String

puts Inside_two::String + String
puts Inside_one::String

puts Inside_one::String.call
puts Inside_one::String.call + Inside_two::String