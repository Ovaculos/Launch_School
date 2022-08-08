def prompt(message)
  puts "=> #{message}"
end

def valid_number?(input)
  input.to_i.to_s == input
end

prompt "------------------------------------------"
prompt "     Welcome to the loan calculator!"
prompt "------------------------------------------"

loop do 

  loan_amt = ''
  loop do
    prompt "How much are you loaning?"
    loan_amt = gets.chomp
    
    if loan_amt.empty? || loan_amt.to_f < 0
      prompt "Please put in a valid loan amount."
    else
      break
    end
  end

  loan_dur_years = ''
  loop do
    prompt "How many years will you be paying the loan off for?"
    loan_dur_years = gets.chomp

    if loan_dur_years.empty? || loan_dur_years.to_f < 0
      prompt "Please input a valid amount of years."
    else
      break
    end
  end

  apr = ''
  loop do
    prompt "What's your % APR?"
    apr = gets.chomp

    if apr.empty? || apr.to_f < 0
      prompt 'Please put a valid apr %.'
    else
      break
    end
  end

  loan_dur_months = loan_dur_years.to_f * 12
  monthly_int = (apr.to_f / 100) / 12
  monthly_payment = loan_amt.to_f *
                      (monthly_int / 
                      (1 - (1 + monthly_int)**(-loan_dur_months)))

  sleep(0.5)
  prompt "Your monthly payment will be $#{format('%.2f', monthly_payment)}"

  sleep(0.5)
  prompt 'Would you like to calculate another mortgage? (y/n)'
  redoo = gets.downcase.chomp
  break unless redoo.start_with?('y')
end

prompt "---------------------------------------------------"
prompt "      Thanks for using the loan calculator."
prompt "                Have a good day!"
prompt "---------------------------------------------------"
