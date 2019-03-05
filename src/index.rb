# Created an array of Hashes
Math_equations = [
    {
        id: 1,
        question: "What is 12 x 10?",
        answer: 120,
    },
    {
        id: 2,
        question: "What is 15 + 12?",
        answer: 39,
    },
    {
        id: 3, 
        question: "What is 20 + 190?",
        answer: 210,
    },
    {
        id: 4,
        question: "What is 3 + 87?",
        answer: 90,
    },
    {
        id: 5,
        question: "What is 9 x 9?",
        answer: 120,
    },
    {
        id: 6,
        question: "What is 12 x 5?",
        answer: 60,
    },
    {
        id: 7,
        question: "What is 45 / 9?",
        answer: 5,
    },
    {
        id: 8,
        question: "What is 300 / 10?",
        answer: 30,
    },
    {
        id: 9,
        question: "What is 7 x 7?",
        answer: 49,
    },
    {
        id: 10,
        question: "What is 20 + 16?",
        answer: 36,
    }
]

# Defined a method called pos_num and parsed in 1 argument
def pos_num drink_num
    #Using a regular expression, we match the pattern against the argument to see if it is an positive integer 
    !/\A\d+\z/.match(drink_num)
end
    
# Defined a method
def math_equation
    question = Math_equations.to_a.sample
    math_count = 0
    puts question[:question]
    answer = gets.chomp.to_i

    # While variable math_count is less than 3
    while math_count < 3
        # if the math count is more than 1 and question does not equal to answer
        if math_count > 1 and question[:answer] != answer
            puts "It seems you may still be drunk. It's safer to catch a taxi"
        elsif question[:answer] == answer            
            puts "You got it right! You are safe to drive but drive safely."
            break
        else
            puts "You got that wrong. Try again"
            answer = gets.chomp.to_i
        end
        math_count += 1
    end
end

def how_many
    count = 0 
    # Using a while loop, while the count variable is less than 3
    while count < 3
        puts "How many drinks have you had in the last 6 hours?"
        drink_count = gets.chomp
        # if the count variable is more than 1 and drink_count is not an integer
        if count > 1 and pos_num drink_count
            # print a message and end loop.
            puts "Oh no! You tried three times and did not enter a number correctly. You are probably wasted. You should catch a taxi."
        # if the drink_count is not an integer
        elsif pos_num drink_count
            # print message
            puts "Oh dear. It seems you entered in the wrong thing. Try entering a number."
        else
            # convert string to integer
            drink_count = drink_count.to_i
            if drink_count > 6
                puts "You have had waaaayyy tooo many drinks! Take a taxi mate!"
            else
                # print message
                puts math_equation
            end
            break
        end
    # increment count variable by 1
        count += 1
    end
end

# assign 0 to the variable count.
count = 0 
# print string message
puts "Welcome, are you sober enough to drive?"
puts "Have you been drinking today? (Yes/No)"

#Assign the input value to variable user_input
userinput = gets.chomp

# while the count variable is less than 3
while count < 3
    # using a case statement
    case userinput
        #  when the user_input is equal to the the following strings,
        when 'Y','y','Yes','yes','YES'
            # print how_many method
            puts how_many
            # exit from the enumberable
            break
        # when the user_input is equal to the the following strings,
        when 'N','n','No','no'
            # return a positive message and exit the app.
            puts "Well done!! You are okay to drive. Drive safely!!!"
            break
        # when the count is more than or equal to 2,
        else 
            if count >= 2
                puts "Oh no! It seems you had too many typos. You must be drunk. It's safer to catch public transport."
                break
            else
            puts "OoOoOh dear... It seems you made a typo, please try again." 
            puts "Have you been drinking today? (Yes/No)"
            userinput = gets.chomp   
            end  
    end  
    count += 1
end

