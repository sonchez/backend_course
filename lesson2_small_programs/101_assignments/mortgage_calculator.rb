require 'yaml'
MESSAGES = YAML.load_file('loans.yml')

def prompt(string)
  puts
  puts("=> #{string}")
  puts "________________________________________________"
end

def percent_checker(num)
  if num.include?('%')
    num.delete!("%")
  end
end

def money_checker(num)
  if num.include?('$')
    num.delete!('$')
  end
end

def percent_money_wrapper(num)
  money_checker num
  percent_checker num
end

def valid_number?(num)
  num.to_i.to_s == num
end

def number?(number)
  valid_number?(number) || format("%.2f", number)
end

def language_selector(language)
  MESSAGES[language]
end

def language_checker?(language_choice)
  language_choice == '1' || language_choice == '2'
end

def language_decider(decision)
  if decision == '1'
    'english'
  else
    'espanol'
  end
end

def language_wrapper(language)
  language = language_decider(language)
  language_selector(language)
end

def debt(p, j, n)
  payment = p.to_f * (j / (1 - (1 + j)**(-n.to_i * 12)))
  # limits decimals
  format("%.2f", payment)
end
# End of Methods

# Beginning of user input (Before main Loop initiates.)
choice = ''
language = ''
loop do
  prompt "Please choose a language!
   Aqui puedes seleccionar el idioma preferido.
   Enter 1 for English or enter 2 for Espanol"
  language = gets.chomp
  # short circuit to manage proper input.
  if language_checker?(language)
    # wrapper to help cut down on method clutter.
    choice = language_wrapper(language)
    break
    # no conditional statement. Simply asks the above prompts again.
  end
end

prompt choice['welcome']
name = ''
loop do
  name = gets.chomp
  # prevent no entry input
  if name.empty?
    prompt choice['namefix']
  else
    break
  end
end

prompt choice['hello'] + " #{name}"
# Main Loop starts here!
loop do
  loan_amount = ''
  loop do
    prompt choice['total_loan']
    loan_amount = gets.chomp
    percent_money_wrapper(loan_amount)
    # prevents number? method crashing with empty input.
    if loan_amount.empty?
      prompt choice['valid']
    elsif number?(loan_amount)
      break
    else
      prompt choice['valid']
    end
  end

  apr = ''
  mpr = ''
  loop do
    prompt choice['apr_amount']
    apr = gets.chomp
    percent_money_wrapper(apr)
    if apr.empty?
      prompt choice['valid']
    # input validation
    elsif number?(apr)
      mpr = ((apr.to_f / 100) / 12)
      break
    else
      prompt choice['valid']
    end
  end

  monthly_duration = ''
  loop do
    prompt choice['month_duration']
    monthly_duration = gets.chomp
    # input validation
    if monthly_duration.empty?
      prompt choice['valid']
    elsif number?(monthly_duration)
      break
    else
      prompt choice['valid']
    end
  end
  # actual loan calculation
  debt(loan_amount, mpr, monthly_duration)

  prompt choice['calculating']
  sleep(1)
  prompt choice['consulting']
  sleep(1)
  prompt choice['collecting']
  sleep(1)
  puts

  prompt choice['month_payment'] + " \
$#{debt(loan_amount, mpr, monthly_duration)}"
  prompt choice['continue']
  # downcase for input validation
  endprogram = gets.downcase.chomp
  break unless endprogram == 'y'
end
prompt choice['goodbye']
