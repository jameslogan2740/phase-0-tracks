Bars={
    bar_1: {
        name: 'Pretty T', 
        location: 'my imagination',
        type: 'karaoke',
        special: '$2 you call it every Monday', 
        bartender: 'Taylor',
        reasons_to_go: [
            'sing',
            'laugh at others singing',
            'drink alcohol'],
    },

    bar_2: {
        name: 'Highland',
        location: '4th street',
        type: 'gay bar', 
        special: '$3 wells every Thursday',
        bartender: 'Tom',
        reasons_to_go: [
            'Have fun with gay people',
            'Dance w/o judegment',
            'watch same sex couples make out'],
    },

    bar_3: {
        name: 'Handlebar',
        location: '5th street',
        type: 'low key hipster',
        special: '$1 brauts on Sundays',
        bartender: 'Mr. Handlebar', 
        reasons_to_go: [],

    },

    bar_4: {},
    bar_5: {},
    bar_6: {},
    
}


#print name of bar_2
p Bars[:bar_2][:name]

#add reasons to go to bar_3
p Bars[:bar_3][:reasons_to_go].push("Witness bartenders with handlebar mustaches.")

#Change "watch same sex couples make out" to something different
p Bars[:bar_2][:reasons_to_go][2] = 'Watch a drag performance.'




