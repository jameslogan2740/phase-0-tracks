airplane = {
    first_class: {
        pretty_name: 'First Class',
        seat_info: {
            total_seats: 6,
            seats_available: 4
        },
        meals: [
            "Leg of Pampered Lamb", 
            "Kale Salad"
        ]
    },
    business_class: {
        pretty_name: 'Business Class',
        seat_info: {
            total_seats: 12,
            seats_available: 9
        },
        meals: [
            "Sustainably Cultivated Lobster with Housemade Butter", 
            "Kale Salad"
        ]
    },
    coach: {
        pretty_name: 'Coach',
        seat_info: {
            total_seats: 50,
            seats_available: 23
        },
        meals: []
    }
}

# 1.
# Guess the return value of this line:

# airplane[:first_class][:pretty_name]

# Then uncomment the line above and check your guess.

# 2.
# Guess the return value of this line:

# airplane[:business_class][:meals]

# Then uncomment the line above and check your guess.

# 3.
# Guess the return value of this line:

#airplane[:business_class][:meals][1]

# Then uncomment the line above and check your guess.

# 4.
# How will this line affect the data structure?

# airplane[:coach][:meals].push("Sad Plastic Tray of Corn")

# Uncomment the lines above and check your guess by adding a line that prints the new data structure.

# 5.
# How would you reverse the meals list in First Class?

# Add a line of code that does that here.
#airplane [:first_class].reverse_each
# 6.
# How would you lowercase the pretty name of one of the classes?
airplane [:coach][:pretty_name].downcase
# Add a line of code that does that here.