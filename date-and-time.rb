# get current date and time
t1 = Time.new
puts "current time: " + t1.inspect

t2 = Time.now
puts "current time: " +t2.inspect

# the components of date and time
t = Time.new

puts "current time: " + t.inspect
puts t.year
puts t.month
puts t.day
puts t.wday # day of week, 0 is Sunday.
puts t.yday # day of year
puts t.hour
puts t.min
puts t.sec
puts t.usec # microsecond
puts t.zone

# Time.utc, Time.gm and Time.local functions
a = Time.local(2008, 7, 8)
puts a
b = Time.local(2008, 7, 8, 9, 10)
puts b
c = Time.utc(2008, 7, 8, 9, 10)
puts c
d = Time.gm(2008, 7, 8, 9, 10, 11)
puts d

time = Time.new
puts time
time_arr = time.to_a
p time_arr
puts Time.utc(*time_arr)

t1 = Time.now.to_i
puts t1

t2 = Time.at(t)
puts t2

t3 = Time.now.to_f
puts t3

# timezones and daylight savings time
time = Time.new

puts time.zone
puts time.utc_offset # seconds of the timezone offset from UTC
puts time.isdst
puts time.utc?
puts time.localtime
puts time.gmtime # convert to UTC
puts time.getlocal # return a new Time object in local timezone
puts time.getutc # return a new Time object in UTC

# format time and date
time = Time.new

puts time
puts time.to_s
puts time.ctime
puts time.localtime
puts time.strftime("%Y-%m-%d %H:%M:%S")

# time arithmetic
now = Time.now
past = now - 10 # 10 seconds ago
future = now + 10
diff = future - past
puts now
puts past
puts future
puts diff
