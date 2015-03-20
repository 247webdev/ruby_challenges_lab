# Create a simple temperature convertor. It should function like the example below:

# Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius
# 1
# Enter Celsius Temperature:
# 24
# 24 degrees Celsius is equal to 75.2 degrees Fahrenheit

type = "start"

while type != "q" do #while loop to make sure entries are valid
  puts "Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius"
  type = gets.chomp
  if type == "1"
    puts "Enter Celsius Temperature"
    num1 = gets.chomp.to_i
    num2 = num1*(9/5)+32
    puts "#{num1} degrees Celsius is equal to #{num2} degrees Fahrenheit"
    break
  elsif type == "2"
    puts "Enter Fahrenheit Temperature"
    num1 = gets.chomp.to_i
    num2 = (num1-32)*(5/9)
    puts "#{num1} degrees Fahrenheit is equal to #{num2} degrees Celsius"
    break
  else
    puts "That is not a valid option"
  end

end #end while loop

