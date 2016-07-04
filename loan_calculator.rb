require 'pry'

def prompt(message)
  puts "=> #{message}"
end

def integer?(input)
  Integer(input) rescue false
end

def float?(input)
  Float(input) rescue false
end

def valid_number?(input)
  integer?(input)||float(input)
end

prompt("Welcome to Loan Calculator! Enter your name:")

name = ''
loop do
  name = gets.chomp
  if name.empty?()
    prompt("Make sure to use a valid name")
  else
    break
  end
end 

prompt("Hi there #{name}")

loan_amount=''
loop do
  prompt("To the nearest £, how much is your loan for?") 
  loan_amount = gets.chomp
  if integer?(loan_amount)
    break
  else
    prompt("Hmm...that doesn't look like a valid amount")
  end
end

loan_apr=''
loop do
  prompt("What is your APR?")
  loan_apr = gets.chomp
  if valid_number?(loan_apr)
    break
  else
    prompt("Hmm...that doesn't look like a valid APR")
  end
end

loan_duration_in_years=''
loop do
  prompt("How many years is the loan for?")
  loan_duration_in_years = gets.chomp
  if integer?(loan_duration_in_years)
    break
  else
    prompt("Hmm...that doesn't look like a valid duration")
  end
end

monthly_interest_rate = loan_apr.to_f / (100 * 12)  # need to convert %
loan_duration_in_months = loan_duration_in_years.to_i * 12


top = monthly_interest_rate * (1+monthly_interest_rate)**loan_duration_in_months
bottom = (1+monthly_interest_rate) ** loan_duration_in_months - 1
monthly_payment = loan_amount.to_i * top / bottom

prompt("Your monthly payment is £#{format('%02.2f',monthly_payment)}")


