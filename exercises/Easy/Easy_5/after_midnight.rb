# def time_of_day(minutes)
#  _, min = minutes.divmod(1440)
#  hour, minutes_left = min.divmod(60)
#  puts "#{format('%.2f', hour)}:#{format('%2f', minutes_left)}"
# end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def get_hour_and_minute(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day
  
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

# 1440 min/day
# #divmod(60)
