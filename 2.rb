name, middle_name, surname = ""
puts "Enter your name:"
name = gets.chomp 
puts "Enter your middle name:"
middle_name = gets.chomp 
puts "Enter your surname:"
surname = gets.chomp 
puts "Hello, " + surname.capitalize + " " + name.capitalize + " " + middle_name.capitalize + "!"