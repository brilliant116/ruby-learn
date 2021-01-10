class Box
    # class variable
    @@count = 0
    # constructor method
    def initialize(w, h)
        @width, @height = w, h
        @@count += 1
    end

    # accessor method
    def get_width
        @width
    end

    def get_height
        @height
    end

    # setter method
    def set_width=(value)
        @width = value
    end

    def set_height=(value)
        @height = value
    end

    # instance method
    def get_area
        @width * @height
    end

    # class method
    def self.print_count()
        puts "box count is #@@count"
    end
end

box = Box.new(10, 20)

box.set_width = 30
box.set_height = 40

x = box.get_width
y = box.get_height

puts "width of the box is #{x}"
puts "height of the box is #{y}"

area = box.get_area
puts "area of the box is #{area}"

box1 = Box.new(40, 60)
box2 = Box.new(30, 70)

Box.print_count


class Box
    # constructor method
    def initialize(w, h)
        @width, @height = w, h
    end

    # accessor method
    def get_width
        @width
    end

    def get_height
        @height
    end

    # instance method
    def get_area
        @width * @height
    end

    private :get_width, :get_height

    # class method
    def print_area
        @area = get_width * get_height
        puts "area of the box is #@area"
    end

    private :print_area
end

box = Box.new(10, 20)

area = box.get_area
puts "area of the box is #{area}"

#box.print_area


class Box
    def initialize(w, h)
        @width, @height = w, h
    end

    def get_area
        @width * @height
    end
end

class Big_box < Box
    def print_area
        @area = @width * @height
        puts "the area of big box is #@area"
    end

    def get_area
        @area = @width * @height
        puts "the area of big box is #@area"
    end
end

box = Big_box.new(10, 30)
box.print_area
box.get_area


class Box
    # constructor method
    def initialize(w, h)
        @width, @height = w, h
    end

    # accessor method
    def get_width
        @width
    end

    def get_height
        @height
    end

    # setter method
    def set_width=(value)
        @width = value
    end

    def set_height=(value)
        @height = value
    end
end

box = Box.new(10, 15)
box.freeze

if box.frozen?
    puts "box object is frozen object"
else
    puts "box object is normal object"
end

#box.set_width = 25


class Box
    attr_accessor :width, :height
    def initialize(w, h)
        @width, @height = w, h
    end

    def get_area
        @width * @height
    end
end

box1 = Box.new(10, 20)
box2 = Box.allocate

a = box1.get_area
puts "area of the box is #{a}"

#b = box2.get_area


class Box
    #puts "type of self is #{self.type}"
    puts "name of self is #{self.name}"
end

phone = "2004-959-559 #This is Phone Number"

# remove Ruby-style comment
phone.sub!(/#.*$/, "")
puts "phone number: #{phone}"

phone = "2004-959-559 #This is Phone Number"

# match nondigits
phone.gsub!(/\D/, "")
puts "phone number: #{phone}"


text = "rails are rails, really good Ruby on Rails"

text.gsub!("rails", "Rails")
puts "#{text}"

text = "rails are rails, really good Ruby on Rails"

# match "rails" at a word boundry.
text.gsub!(/\brails\b/, "Rails")
puts "#{text}"