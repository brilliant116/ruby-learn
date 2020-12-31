$LOAD_PATH.push File.expand_path('..', __FILE__)

require "support"

class Decade
include Week
    number_of_years = 2
    def number_of_months
        puts Week::First_day
        number = 2 * 12
        puts "there are #{number} months in 2 years"
    end
end

d1 = Decade.new

puts Week::First_day
Week.weeks_in_month
Week.weeks_in_year
d1.number_of_months