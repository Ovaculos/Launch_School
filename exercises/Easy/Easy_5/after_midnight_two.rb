MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def get_delta_time(time)
  time = time.split(':')
  time.map! { |t| t.to_i }
  time[0] *= MINUTES_PER_HOUR
  time = time[0] + time[1]
end

def after_midnight(time)
  delta = get_delta_time(time)
  delta -= MINUTES_PER_DAY if delta == MINUTES_PER_DAY
  delta
end

def before_midnight(time)
  delta = get_delta_time(time)
  delta -= MINUTES_PER_DAY unless delta == 0
  delta.abs
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0