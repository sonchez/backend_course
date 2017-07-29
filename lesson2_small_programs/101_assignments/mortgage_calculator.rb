require 'yaml'
MESSAGES = YAML.load_file('loans.yml')

def prompt(string)
  puts("=> #{string}")
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
  format("%.2f", payment)
end
# End of Methods
# Beginning of user input (Before main Loop initiates.)
choice = ''
language = ''
loop do
  prompt("Please choose a language!")
  prompt("Aqui puedes seleccionar el idioma preferido.")
  prompt("Enter 1 for English or enter 2 for Espanol")
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
prompt choice['input']
name = ''
loop do
  name = gets.chomp
  # prevent no entry input
  if name.empty?
    prompt choice['fixname']
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
    # prevents number? method crashing with empty input.
    if loan_amount.empty?
      prompt choice['valid']
      # format("%.2f", number) doesnt like empty inputs.
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
    if valid_number?(apr) # input validation
      mpr = ((apr.to_f / 100) / 12)
      p mpr
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
    if valid_number?(monthly_duration)
      break
    else
      prompt choice['valid']
    end
  end
  # actual loan calculation
  debt(loan_amount, mpr, monthly_duration)

  prompt choice['calculating']
  sleep(0.5)
  prompt choice['consulting']
  sleep(0.5)
  prompt choice['collecting']
  sleep(0.5)
  puts

  prompt choice['month_payment'] + "\
$#{debt(loan_amount, mpr, monthly_duration)}" # Rubocop doesnt like long lines.
  prompt choice['continue']
  # downcase for input validation
  endprogram = gets.downcase.chomp
  break unless endprogram == 'y'
end
prompt choice['goodbye']
