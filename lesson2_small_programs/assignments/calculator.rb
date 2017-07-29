require 'yaml'
MESSAGES = YAML.load_file('calculator_strings.yml')


def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
   num.to_i.to_s == num
end

def number?(number)
  valid_number?(number) || number.to_f.to_s
end

def operation_to_message(op)
  value = case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Mulitplying'
  when '4'
    'dividing'
  end
  value
end

def language_selector(language)
  MESSAGES[language]
end

choice = ''
language = ''
loop do
  prompt("Please choose a language!/Aqui puedes seleccionar el idioma preferido. (English or Espanol)")
  language = Kernel.gets().downcase.chomp()
  if language.downcase == 'english' || language == 'espanol'
    choice = language_selector(language)
    break
  else
  end
end

prompt(choice['welcome'])
name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(choice['name'])
  else
    break
  end
end

prompt(choice['hi'] + " #{name}")

loop do # Main Loop
  number1 =
  loop do
    prompt(choice['first_number'])
    number1 = Kernel.gets().chomp()
    if valid_number?(number1) && number?(number1)
      break
    else
      prompt(choice['error'])
    end
  end

  number2 = ''
  loop do
    prompt(choice['second_number'])
    number2 = Kernel.gets().chomp()
    if valid_number?(number2) && number?(number2)
      break
    else
      prompt(choice['error'])
    end
  end

  prompt(choice['options'])

  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(choice['choose'])
    end
  end

  prompt("#{operation_to_message(operator)} " + choice['calculating'])

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt(choice['results'] + " #{result}")
  prompt(choice['anotha_one'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(choice['end'])
