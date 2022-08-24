require 'date'

def friday_13th(year)
  unlucky_days = 0
  1.upto(12) do |month|
    day = Date.new(year, month, 13)
    unlucky_days += 1 if day.friday?
  end
  
  unlucky_days
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2