
# An example of the output for a size 6 board would look like this:

# X X X
#  X X X
# X X X
#  X X X
#  X X X
# X X X

# Pseudocode

# user passes in a number of spaces 
# This is how wide and how long checkerboard will be
# first row will start with "X", followed by a space, " ", until there are a total of 6 "X"s & spaces
# Next line will start with a " ", followed by an "X"...
# This pattern repeats until there are 6 rows

# create loop using .times? ***Could also use a range (1...param) with .each
# This will run for how every many spaces there are (param)
# check to see if the index we're currently iterating over (plus 1) is odd
# if it is then start that row with x and add a string of "XOXOXO..."
# Do this by multiplying "X" by spaces/2 (will need to round this up *** for odd numbers)
# Then join all "X"'s with a " "
    # If spaces is an even number you will need to add another character to the end of the string
    # This is because when you use join, it will only insert your joining character between any characters you're joining...and won't add another one to the end of your string
# Do the same thing for " "
# At the end of each loop, print out your concatenated string
# Then reassign value of concatenated string to ""

# *** I changed " " to an "O" to make it easier to see the row characters

def print_checker_board(spaces)
    row = ""
    (spaces).times do |i|
        if (i + 1) % 2 != 0 
            row += (["X"] * (spaces/2.to_f).round()).join("O")
            spaces % 2 == 0 && row += "O"
        else
            row+= (["O"]  * (spaces/2.to_f).round()).join("X")
            spaces % 2 == 0 && row += "X"
        end 
        puts row
        row = ""
    end
end

print_checker_board(7)