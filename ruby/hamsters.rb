puts "Answer my questions about your little hamster."
puts "What's your hamsters name?"
name = gets.chomp

puts "How loud is your hamster when it squeaks? Please rate your hamsters loudness from 1-10."
volume = gets.chomp.to_i

puts "What color is your hamsters fur?"
fur = gets.chomp

puts "Is your hamster a good candidate for adoption? (yes/no)"
adopt = gets.chomp
if adopt == "yes"
  adopt = "is"
else adopt = "is not"
end

age = nil
puts "how old is your hamster? (if you are unsure, leave blank, and press enter.)"
age = gets.chomp.to_i
if age==0 
  age=nil
end


puts "Your cute little hamster's name is #{name}. Your hamster's volume level is approximately #{volume} on a scale from 1-10. #{name} has #{fur} colored fur and he/she #{adopt} a good candidate for adoption."



if age!=nil
	puts "You think his age is #{age}"
else
	puts "You don't know its age."
end