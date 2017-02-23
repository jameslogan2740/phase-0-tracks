# PSEUDOCODE:
# Ask user if they would like to create, edit, or exit program. (if this is the first time the user uses the program, assume they will create.)
# If they would like to create a profile, ask user for all information such as: name, age, children, pets, theme, and decor.
# Print user profile once created. 
# If they would like to edit, ask what part of the profile they would like to edit and implement change. 
# If they would like to quit, terminate program. 
# Make edition if needed
# Check proper type. 
# End



database={}

def ask question
	puts question
	answer=gets.chomp
	if answer=="yes"
		return true
	elsif answer=="no"
		return false
	elsif answer==""
		puts "Sorry, I did not catch that"
		ask question
	else
		return answer
	end
end


#METHOD FOR CREATING A DATABASE
def create database
	puts"Let's start creating a new profile."
	database[:name]=ask "Client's name"
	database[:last]=ask "Client's last name"
	database[:age]= (ask "What is your age").to_i
	database[:child]=(ask "How many children do you have?").to_i
	database[:pets]=(ask "How many pets do you have?").to_i
	database[:theme]=ask "Would you like a trendy, techno, or retro theme?"
	database[:decor]=ask "Are you willing to pay for extra for decorations? (yes/no)"
	return database
end

#METHOD FOR EDITING ANY NUMBER
def edit database, modify
	if modify=="name" ||modify=="last" ||modify=="age" ||modify=="child"||modify=="pets"||modify=="theme"||modify=="decor"
		puts "Insert new value for #{modify}"
		change=gets.chomp
		database[modify.to_sym]=change
	end
	return database
end

#prints database very pretty
def pretty database
	puts "-----PROFILE-----".center(20)
	database.each do |key,value|
		puts "#{key}:".ljust(10) + " #{value}".rjust(10)
	end
end


#----------ACTUAL PROGRAM--------------------------------------
puts "Welcome to the designer's interface."
quit=false
until quit

puts "Would you like to CREATE a profile, EDIT, or QUIT"
action=gets.chomp
	if action.upcase=="CREATE"
		pretty (create database)
	elsif action.upcase=="EDIT"
		puts "What would you like to edit?"
		puts database.keys
		modify=gets.chomp
		pretty (edit(database,modify))
	elsif action.upcase=="QUIT"
		quit=true
	else
		puts "That is not valid"
	end
end