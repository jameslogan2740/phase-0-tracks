=begin 
Ask for the users name
Issue new name
	swap first and last name
	change all the vowels and conssonants to next and consonant in the alphabet. 
Create user interface & store the alias
=end

$consonants= ["a", "e", "i", "o", "u", "A" "E", "I", "O", "U"]

def swap name
	swap_name=name.split("").reverse!.join(" ")
	return swap_name
end

def consonant_change letter
	new_letter=("a" if letter=="u") || ("A" if letter=="U") || letter.next
	until $consonants.include? new_letter
		new_letter=new_letter.next
	end
	return new_letter
end

def vowel_change letter
	new_letter=("a" if letter=="z") || ("A" if letter=="Z") || letter.next
	if $consonants.include? new_letter
		new_letter=new_letter.next
		return new_letter
	else
		return new_letter
	end
end

def fake name
	swapped_name=swap(name)
	name_array=swapped_name.split("")
	name_array.map! do |letter|
		if $consonants.include? letter
			consonant_change letter
		elsif letter==" "
			" "
		else
			vowel_change letter
		end
end
	fake_name=name_array.join("")
	return fake_name
end

def pretty database
	puts "-----Alias-----".center(50)
	puts "Name".ljust(20)+"Fake Name" .rjust(30)
	database.each do |key, value|
		puts "#{key}:" .ljust(20) + " #{value}" .rjust(30)
	end
end

#User Interface
quit=false
names={}
puts "Hey bro, your name sucks. We need to change it for your safety."
until quit
	puts "Insert your first and last name or q to quit."
	your_name=gets.chomp
	if your_name=="q"
		quit=true
	else
		fake_name=fake your_name
		names[your_name]=fake_name
		puts "Your fake name will be: #{fake_name}"
	end
end

pretty names
puts
