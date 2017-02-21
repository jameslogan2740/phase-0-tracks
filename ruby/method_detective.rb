# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 swap= "iNvEsTiGaTiOn".swapcase
 #=> “InVeStIgAtIoN”

zoom="zom".insert(1,"0")
 #=> “zoom”

enhance="enhance".center(20)
 #=> "    enhance    "

up="Stop! You’re under arrest!".upcase
 #=> "STOP! YOU’RE UNDER ARREST!"

addition="the usual"<< " suspects"
#=> "the usual suspects"

beggining=" suspects".insert(0,"the usual ")
#=> "the usual suspects"

dissappear="The case of the disappearing last letter".chop
#=> "The case of the disappearing last lette"

missing="The mystery of the missing first letter".slice(1..38)
#=> "he mystery of the missing first letter"

elementary="Elementary,    my   dear        Watson!".split.join("")
#=> "Elementary, my dear Watson!"

ordinal="z".ord #returns the integer ordinal of a one character string.
#=> 122 

count="How many times does the letter 'a' appear in this string?".count("a")
# => 4

puts "swap letters; #{swap}"
puts "add letter to zoom; #{zoom}"
puts "add space to #{enhance}"
puts "uppcase everything; #{up}"
puts "add to string; #{addition}"
puts "add to beggining; #{beggining}"
puts "dissapear last letter; #{dissapear}"
puts "dissapear first letter; #{missing}"
puts "join string w/o spaces; #{elementary}"
puts "return integer ordinal #{ordinal}"
puts "count the times A appear in string; #{count}"