
def time_of_day(minutes)
  hours_in_day = 24
  minutes_in_day = 1440
  return "00:00" if minutes == 0
  base_minutes = minutes%minutes_in_day
  hours = (base_minutes/60)
  minutes = base_minutes - (hours*60)
  "#{format("%002d", hours) }:#{format("%002d", minutes)}"
end



p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"



