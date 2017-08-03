require 'yaml'
MESSAGES = YAML.load_file('loans.yml')

def prompt(string)
  puts
  puts("=> #{string}")
  puts "_______________________________________________________________"
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
  num.to_i.to_s == num || num.to_f >= 0
end

def language_selector(language)
  MESSAGES[language]
end

def language_checker?(language_language_translation)
  language_language_translation == '1' || language_language_translation == '2'
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
  # limits to two decimal points
  format("%.2f", payment)
end
# End of Methods
# ---------------------------------------------------------
system 'clear'
system 'cls'
# Beginning of user input (Before main Loop initiates.)
language_translation = ''
language = ''
loop do
  prompt "Please choose a language!
   Aqui puedes seleccionar el idioma preferido.
   Enter 1 for English or enter 2 for Espanol"
  language = gets.chomp
  # short circuit to manage proper input.
  if language_checker?(language)
    language_translation = language_wrapper(language)
    break
  end
end
# ---------------------------------------------------------
# Name loop
prompt language_translation['welcome']
name = ''
loop do
  name = gets.chomp
  break unless name.empty?
  prompt language_translation['namefix']
end
# ---------------------------------------------------------
prompt language_translation['hello'] + " #{name}"
# Main Loop starts here!
loop do
  # First loan question loop
  loan_amount = ''
  loop do
    prompt language_translation['total_loan']
    loan_amount = gets.chomp
    percent_money_wrapper(loan_amount)
    # prevents number? method crashing with empty input.
    if loan_amount.empty?
      prompt language_translation['valid']
    elsif valid_number?(loan_amount)
      break
    else
      prompt language_translation['valid']
    end
  end
  # ---------------------------------------------------------
  # Second loan question loop
  apr = ''
  mpr = ''
  loop do
    prompt language_translation['apr_amount']
    apr = gets.chomp
    percent_money_wrapper(apr)
    if apr.empty?
      prompt language_translation['valid']
    # input validation
    elsif valid_number?(apr)
      mpr = ((apr.to_f / 100) / 12)
      break
    else
      prompt language_translation['valid']
    end
  end
  # ---------------------------------------------------------
  # Third loan question loop
  monthly_duration = ''
  loop do
    prompt language_translation['month_duration']
    monthly_duration = gets.chomp
    # input validation
    if monthly_duration.empty?
      prompt language_translation['valid']
    elsif valid_number?(monthly_duration)
      break
    else
      prompt language_translation['valid']
    end
  end
  # ---------------------------------------------------------
  # actual loan calculation
  debt(loan_amount, mpr, monthly_duration)

  prompt language_translation['calculating']
  sleep(1)
  prompt language_translation['consulting']
  sleep(1)
  prompt language_translation['collecting']
  sleep(1)
  puts

  prompt language_translation['month_payment'] + " \
$#{debt(loan_amount, mpr, monthly_duration)}"
  prompt language_translation['continue']
  # downcase for input validation
  endprogram = gets.downcase.chomp
  if endprogram == "y"
    system 'clear'
    system 'cls'
  end
  break unless endprogram == 'y'
end
prompt language_translation['goodbye']
# ---------------------------------------------------------
