

class Sample
    def hello
        puts "hello"
    end
end

object1 = Sample.new
object1.hello

class Customer
    @@no_of_customers = 0

    def initialize(id, name, addr)
        @@no_of_customers += 1

        @cust_id = id
        @cust_name = name
        @cust_addr = addr
    end

    def display_details()
        puts "customer id #@cust_id"
        puts "customer name #@cust_name"
        puts "customer id #@cust_addr"
    end

    def total_no_of_customers()
        puts "total number of customers: #@@no_of_customers"
    end
end

cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

cust1.display_details()
cust1.total_no_of_customers()
cust2.display_details()
cust2.total_no_of_customers()

cust3 = Customer.new("3", "Raghu", "Madapur, Hyderabad")

cust3.total_no_of_customers()