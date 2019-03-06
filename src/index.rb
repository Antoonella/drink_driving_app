require_relative "How_many_drinks"
require "tty-font"
require "colorize"

# assign 0 to the variable count
count = 0 

font = TTY::Font.new(:doom)
puts font.write("Welcome!!!")

# print string message
puts "Are you sober enough to drive? let's find out ".white.on_black.blink
puts "Have you been drinking today? (Yes/No)"

#Assign the input value to variable user_input
user_input = gets.chomp

# while the count variable is less than 3
while count < 3
    # using a case statement
    case user_input
        #  when the user_input is equal to the the following strings,
        when 'Y','y','Yes','yes','YES'
            # print how_many method
            drinks = How_many_drinks.new 
            drinks.how_many
            # exit from the enumberable
            break
        # when the user_input is equal to the the following strings,
        when 'N','n','NO','no','No'
            # return a positive message and exit the app.
            puts "Well done!! You are okay to drive. Drive safely!!!"
            break
        else 
            # if the count variable is more than or equal to 2,
            if count >= 2
                # print message
                puts "Oh no! It seems you had too many typos. You must be drunk. It's safer to catch public transport."
                # exit app
                break
            else
            # return error message and ask for user input again
            puts "OoOoOh dear... It seems you made a typo, please try again." 
            puts "Have you been drinking today? (Yes/No)"
            user_input = gets.chomp   
            end  
    end  
    # increment count variable by 1
    count += 1
end

