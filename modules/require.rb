# 1
require_relative "file1"
require_relative "file2"

y1 = Function1.sin(Function1::Pi / 4)
puts "y1 is #{y1}"
y2 = Function2.sin(Function2::Angle)
puts "y2 is #{y2}"

# 2
$LOAD_PATH.push File.expand_path("..", __FILE__)

require "file1"
require "file2"

y1 = Function1.sin(Function1::Pi / 4)
puts "y1 is #{y1}"
y2 = Function2.sin(Function2::Angle)
puts "y2 is #{y2}"

# 3
$LOAD_PATH.unshift File.expand_path("..", __FILE__)

require "file1"
require "file2"

y1 = Function1.sin(Function1::Pi / 4)
puts "y1 is #{y1}"
y2 = Function2.sin(Function2::Angle)
puts "y2 is #{y2}"
