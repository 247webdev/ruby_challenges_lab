
$balance = 4000

#check balance function
def check_balance
  puts "Your current balance is #{$balance}."
end

#deposit function
def deposit
  puts "How much would you like to deposit?"
  dep = gets.to_i
  $balance += dep
  check_balance
end

#withdraw
def withdraw
  puts "How much would you like to withdraw?"
  withdrawl = gets.to_i
  $balance -= withdrawl
  check_balance
end

#Prompt user for inputs
def prompt
  puts "Would you like to display your 'balance', 'withdraw' or 'deposit'?"
  action = gets.chomp
  case action
    when "balance"
      check_balance
    when "deposit"
      deposit
    when "withdraw"
      withdraw
    else
      puts "That is not a valid option. Go fuck yourself."
  end
end

# Done function
def you_done
  puts "Are you done? 'yes' / 'no'"
  $done = gets.chomp
end

# ending function
def enders
  if $done == "no" || $done == "No"
    prompt
  elsif $done == "yes" || $done == "Yes"
   puts "Thank you! Goodbye."
  else
    puts "That is not a valid option stupidface. Let's try again."
    you_done
    enders
  end
end

prompt
you_done
enders






