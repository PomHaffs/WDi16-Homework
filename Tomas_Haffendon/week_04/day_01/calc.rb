require 'pry'


puts "Welcome to a calcuator"

def menu
	puts ""
	puts "(a) - addition"
	puts "(s) - subtraction"
	puts "(m) - multiplication"
	puts "(d) - divide"
	puts "(e) - exponent"
	puts "(r) - root"
	puts "(q) - quit"
	print "Enter your choice: "
	gets.chomp() #auto returned cos ruby
end
user_choice = menu() #whatever typed in is saved here

def add
	puts "What is your first number?"
	first_num = gets.to_f
	puts "What is your second number?"
	second_num = gets.to_f

	puts "The result is #{first_num + second_num}"
end

def subtraction
	puts "What is your first number?"
		first_num = gets.to_f
	puts "What is your second number?"
		second_num = gets.to_f

	puts "The result of your subtraction is #{first_num - second_num}"

end

def multiply
	puts "What is your first number?"
		first_num = gets.to_f
	puts "What is your second number?"
		second_num = gets.to_f

	puts "The result of your multiplication is #{first_num * second_num}"

end

def divide
	puts "What is your first number?"
		first_num = gets.to_f
	puts "What is your second number?"
		second_num = gets.to_f

	puts "The result of your division is #{first_num / second_num}"

end

def exponent
	puts "What is your base number?"
		first_num = gets.to_f
	puts "What do you want to raise it to?"
		second_num = gets.to_f

	puts "The result of your calulation is #{first_num ** second_num}"

end

def root
	puts "You want to calculate the root of what number?"
		first_num = gets.to_f
	puts "The result of your calulation is #{Math.sqrt(first_num)}"

end

until user_choice == "q"
	case user_choice
		when "a" then add()
		when "s" then subtraction()
		when "m" then multiply()
		when "d" then divide()
		when "e" then exponent()
		when "r" then root()


		else
			puts "you still haven't pressed q"
	end

	user_choice = menu() #must be added back in to redefine user_choice
end

puts ""
puts "Thanks for using the calculator friend!"
