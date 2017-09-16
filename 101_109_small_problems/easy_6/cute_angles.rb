DEGREE = "\xC2\xB0"
SIGN = '-'

def dms (num)
  usenum = num.abs
  degree = usenum.to_i
  decimal = (usenum - degree)
  minutes = (decimal * 60)
  seconds = (minutes - minutes.to_i)
  seconds = (seconds * 60).to_i
  num < 0 ? (degree = SIGN + degree.to_s) : nil
  "#{degree}#{DEGREE}#{sprintf('%02d', minutes.to_i)}'#{sprintf('%02d',seconds)}\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(-76.73) == %(-76°43'48")