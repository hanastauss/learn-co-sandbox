#full functioning kalkulator!!!!!
require 'colorize'
def register_add(kookies=0.00, kandy=0.00, kalculators=0.00, kurling_iron=0.00) #default is 0, so nothing is added

  #stores prices as variables
  chocolate_kookies = 3.00
  klossy_kandy = 2.50
  kool_kalculators = 7.00
  kurly_iron = 20.00

  #add items, stores full item price as variable
  kookie_price = kookies * chocolate_kookies
  kandy_price = kandy * klossy_kandy
  kalculators_price = kalculators * kool_kalculators
  kurly_iron_price = kurling_iron * kurly_iron

  #stores totals as ANOTHER variable
  total_price = kookie_price + kandy_price + kalculators_price + kurly_iron_price

  #displays what your total is (addition)
 puts "Your total price is $#{total_price} .".yellow

  puts "
How much is your payment?"
  payment = gets.chomp
  change = payment.to_f - total_price

 if change > 0
  puts "Your change is $#{change} . Thank you!".green #shows change if customers pay more than their total price
 end

  if change ==0
    puts "Have a nice day!".green
  end

  if change < 0
    debt = change * -1 #so that it appears to be a positive number in $ ("cause if it appears in negative form then it would be weird right)
    puts "You owe us $#{debt}. PAY UP. (#rude)".light_red
  end

  #membership for next time
  puts "Do you want to join our membership and get 20% off your next purchase?"
  answer = gets.chomp
  new_answer = answer.upcase # make the user input all capitalized so it doesn't matter what capitalization they actually inputed
  if new_answer == "NO"
    puts "Thank you, have a nice day.".yellow
    else answer == "YES"
    puts "What is your name?"
    user_name = gets.chomp
    puts "What is your email?"
    user_email = gets.chomp
    puts "What is your phone number?"
    user_number = gets.chomp
    puts "Your name is #{user_name}, your email is #{user_email}, and your phone number is #{user_number}. Is that correct?"
    is_correct = gets.chomp
    is_that_correct = is_correct.upcase
    if is_that_correct ==  "YES"
      puts "Use the kode KLOSS-IS-THE-BOSS to get 20% off your next purchase!".yellow # if we had more time, we would make the code actually work for a future purchase
      puts "If you had been a member during this transaction, you would've saved #{total_price / 5} dollars! Oh well...".light_yellow
      else is_that_correct == "NO"
      puts "It's too late. Sorry.".light_red # if we had more time, we would implement a way to edit the membership information
    end
  end
end

 puts "
WELCOME TO THE KLOSSY KONVENIENCE STORE!

Prices: Kookies - 1 for $3.00
Kandies - 1 for $2.50
Kalkulators - 1 for $7.00
Kurling Iron - 1 for $20.00

".blue
 puts "How many kookies would you like to buy?".light_blue
  user_kookies = gets.chomp
 puts "How many kandies would you like to buy?".light_blue
  user_kandies = gets.chomp
 puts "How many kalkulators would you like to buy?".light_blue
  user_kals = gets.chomp
 puts "How many kurling irons would you like to buy?".light_blue
  user_kurls = gets.chomp

 puts register_add(user_kookies.to_f, user_kandies.to_f, user_kals.to_f, user_kurls.to_f)