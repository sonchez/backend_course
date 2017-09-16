require 'pry'

def number_seperator(num)
  string_array = []
  while num > 0
    string_array << num%10
    num = num/10
  end
  string_array = string_array.reverse
  string_array
end


def string_converter(array)
  array
  string = ''
  counter = 0
  while counter < array.length
    i_to_s = array[counter]
    case i_to_s
    when 1
      string << "1"
    when 2
      string << "2"
    when 3
      string << "3"
    when 4
      string <<  "4"
    when 5
      string << "5"
    when 6
      string << "6"
    when 7
      string << "7"
    when 8
      string << "8"
    when 9
      string << "9"
    when 0
      string << '0'
    end
    counter += 1
  end
  string
end

def positive_or_negative(number)
  if number > 0
    '+'
  elsif number < 0
   "-"
  end
end


def signed_integer_to_string(num)
 string_array = []
  if num == 0
    string_array << num
    string =  string_converter(string_array)
  elsif num > 0
    sign = positive_or_negative(num)
    array = number_seperator(num)
    string =  string_converter(array)
    string = sign + string
  else
    sign = positive_or_negative(num)
    num = (num - num - num)
    array = number_seperator(num)
    string =  string_converter(array)
    string = sign + string
  end
  string
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'