require 'pry'

puts "Welcome to your trip calcuator, please tell me some things about your trip"

def menu
	puts ""
	puts "(C) - Cost of trip"
	puts "(T) - Trip duration"
	puts "(Q) - Quit calcuator"
	puts "Please enter a selection"
	gets.chomp()
end
user_choice = menu()

def cost
	puts "Please estimate your miles per gallon"
		mile_per_g = gets.to_f
	puts "Please tell me your trip distance in miles"
		trip_distance = gets.to_f
	puts "Please tell me your cost per gallon"
		cost_per_g = gets.to_f

		puts "Your estimated trip cost will be $#{(trip_distance/mile_per_g)*cost_per_g}"
	end

	def duration
		puts "Please estimate your ave. speed"
			ave_speed = gets.to_f
		puts "Please tell me your trip distance in miles"
			trip_distance = gets.to_f

			puts "Your estimated time #{trip_distance/ave_speed} minutes"
		end

until user_choice == "Q"
	case user_choice
		when "C" then cost()
		when "T" then duration()
		else
			puts "you still haven't pressed q"
	end
	user_choice = menu() #must be added back in to redefine user_choice
end
