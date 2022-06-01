# def time_of_day(minutes)
#  _, min = minutes.divmod(1440)
#  hour, minutes_left = min.divmod(60)
#  puts "#{format('%.2f', hour)}:#{format('%2f', minutes_left)}"
# end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def get_hour_and_minute(minutes)
  minutes += MINUTES_PER_DAY while minutes < 0

  time = minutes % MINUTES_PER_DAY
  
  time.divmod(60)
end

def time_of_day(minutes_to_midnight)
  hours, minutes = get_hour_and_minute(minutes_to_midnight)

  format('%02d:%02d', hours, minutes)
end

# p get_hour_and_minute(-3)
# p get_hour_and_minute(-1437)
# p get_hour_and_minute(3000)
# p get_hour_and_minute(-4231)

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# 1440 min/day
# #divmod(60)
