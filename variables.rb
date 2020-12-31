# Ruby provides four types of variables.

# Local Variables − Local variables are the variables that are defined in a method. Local variables are not available outside the method. Local variables begin with a lowercase letter (_).

# Instance Variables − Instance variables are available across methods for any particular instance or object. That means that instance variables change from object to object. Instance variables are preceded by the at sign (@) followed by the variable name.

# Class Variables − Class variables are available across different objects. A class variable belongs to the class and is a characteristic of a class. They are preceded by the sign @@ and are followed by the variable name.

# Global Variables − Class variables are not available across classes. If you want to have a single variable, which is available across classes, you need to define a global variable. The global variables are always preceded by the dollar sign ($).



# global variables
$global_variable = 1

puts "global variable is #$global_variable"

class Global
    def print_global
        puts "global variable in class1 is #$global_variable"
    end
end

object1 = Global.new()
object1.print_global


# instance variables
class Customer
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   def display_details()
      puts "Customer id: #@cust_id"
      puts "Customer name: #@cust_name"
      puts "Customer address: #@cust_addr"
   end
end


cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")

cust1.display_details()

# class variables
class Customer
   @@no_of_customers = 0
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
   end
   def total_no_of_customers()
      @@no_of_customers += 1
      puts "Total number of customers: #@@no_of_customers"
   end
end

cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

cust1.total_no_of_customers()
cust2.total_no_of_customers()

# local variables
#
# In the above example, local variables are id, name and addr.


# constants

class Constants
   Var1 = 100
   Var2 = 200
   def show
      puts "value of the 1st constant is #{Var1}"
      puts "value of the 2nd constant is #{Var2}"
   end
end

object = Constants.new()
object.show

