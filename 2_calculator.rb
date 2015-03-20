# Create a simple calculator that first asks the user what method they would like to use
# (addition, subtraction, multiplication, division) and then asks the user for two numbers,
# returning the result of the method with the two numbers. Here is a sample prompt:

# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9

def add(num1,num2)
  result = num1 + num2
end

def sub(num1,num2)
  result = num1 - num2
end

def mult(num1,num2)
  result = num1 * num2
end

def div(num1,num2)
  if num2 != 0
    sum = num1 / num2
  else
    sum = "Cannot divide by zero"
  end
end

puts "What calculation would you like to do? (add, sub, mult, div)"
type = gets.chomp
puts "What is number 1?"
num1 = gets.to_i
puts "What is number 2?"
num2 = gets.to_i

case type
  when "add"
    result = add(num1,num2)
    puts "Your result is #{result}"
  when "sub"
    result = sub(num1,num2)
    puts "Your result is #{result}"
  when "mult"
    result = mult(num1,num2)
    puts "Your result is #{result}"
  when "div"
    result = div(num1,num2)
    if result == "Cannot divide by zero"
      puts result
    else
      puts "Your result is #{result}"
    end
  else
    puts "#{type} is not a valid option"
end

