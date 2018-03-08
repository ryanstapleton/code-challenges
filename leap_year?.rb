# Given a year, report if it is a leap year.
# on every year that is evenly divisible by 4
#   except every year that is evenly divisible by 100
#     unless the year is also evenly divisible by 400
#  Cases


class Date
  def self.leap?(year)
    if (year % 400 == 0)
      return true
    elsif ((year % 4) == 0) && ((year % 100) == 0)
      return false
    elsif (year % 4) == 0
      return true 
    else
      return false
    end
  end
end

p Date.leap?(2000)