def after_midnight(string)
  hours_in_day = 24
  minutes_in_hour = 60
  hours = string.split(":")
  minutes = hours.pop
  time = hours.map {|h| h.to_i*60}
  time.push(minutes.to_i)
  time = time.inject(:+)
  time == 1440 ? 0 : time
end

def before_midnight(string)
  hours_in_day = 24
  minutes_in_hour = 60
  hours = string.split(":")
  minutes = hours.pop
  time = hours.map {|h| h.to_i*60}
  time.push(minutes.to_i)
  time = time.inject(:-)
  time == 1440 ? 0 : time
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0