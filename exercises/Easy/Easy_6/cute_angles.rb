MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(angle)

  until (0..360).include?(angle)
    angle < 0 ? angle += 360 : angle -= 360
  end

  degree, mins = angle.divmod(1)

  minute = mins * MINUTES_PER_DEGREE
  minute, secs = minute.round(2).divmod(1)

  second = secs * SECONDS_PER_MINUTE
  second = second.round(2).divmod(1)[0]

  format(%(#{degree}°'%02d'%02d"), minute, second)

end

p dms(30)# == %(30°00'00")
p dms(76.73)# == %(76°43'48")
p dms(254.6)# == %(254°36'00")
p dms(93.034773)# == %(93°02'05")
p dms(0)# == %(0°00'00")
p dms(360)# == %(360°00'00") || dms(360) == %(0°00'00")

p dms(400)# == %(40°00'00")
p dms(-40)# == %(320°00'00")
p dms(-420)# == %(300°00'00")