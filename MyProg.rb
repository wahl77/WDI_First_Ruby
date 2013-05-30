
def is_num(a_string)
	if /[0-9]+/.match(a_string) != nil && /[0-9]+/.match(a_string)[0] == a_string
		return true
	else
		return false
	end
end


def prompt_number(string)
	puts string
	value = gets.chomp
	if !is_num(value)
		puts "You have entered an incorrect value"
		return prompt_number(string)
	end
	return value.to_i
end



def fiz_buz(limit)
	limit.times do |x|
		if x % 15 == 0
			puts "fiz_buzz"
		elsif x % 3 == 0
			puts "fiz"
		elsif x % 5 == 0
			puts "buzz"
		else
			puts x
		end
	end
end

def fiz_buz2(limit)
	limit.times do |x|
		case
		when x % 15 == 0
			puts "fiz_buzz"
		when x % 3 == 0
			puts "fiz"
		when x % 5 == 0
			puts "buzz"
		else
			puts x
		end
	end
end

def name_tag
	puts "What is your first name?"
	name = gets.chomp
	puts "What is your last name?"
	name_last = gets.chomp
	age = -1
	age = prompt_number("Please enter your age")
	gender = ""
	while gender != "m" && gender != "f"
		puts "Please enter your gender (f/m)"
		gender = gets.chomp
	end
	
	puts "Hello #{ gender == "m" ? "Mr" : age <= 19 ? "Mrs" : "Ms"} #{name} #{name_last}"  
end

def calculator
	option = prompt_number("What do you want to do?\n1) Add\n2) Sub\n3) Mult\n4) Div\n5) Advanced\n6) Quit")
	if option < 5
		num1 = prompt_number("What is your first number?")
		num2 = prompt_number( "What is your second number?")
		case option 
			when 1
				puts "Sum is #{num1 + num2}"
			when 2 
				puts "Sub #{num1 - num2}"
			when 3 
				puts "Mult #{num1 * num2}"
			when 4 
				puts "Div #{num1 / num2}"
			else
				puts "Some error"
		end
	elsif option == 5 
		puts "Welcome to Avanced Calc"
		option = prompt_number("What do you want to do 1) Exp 2)Square")
		case option
		when 1
			num1 = prompt_number("What is your first number?")
			num2 = prompt_number( "What is your second number?")
			puts "Exponent is #{num1 ** num2}"
		when 2
			num1 = prompt_number("What is your first number?")
			puts "Square is #{num1 ** 0.5}"
		else
			puts "Some error occured"
		end
	elsif option == 6
		return
	else 
		puts "Please enter a valid number"
		calculator
	end
	calculator
end



#name_tag
calculator
