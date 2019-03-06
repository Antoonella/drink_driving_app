require 'tty-font'
require 'colorize'

class Math_equation
    attr_accessor :math_equations

    def initialize
        # Created an array of Hashes
        @math_equations = [
            {
                question: "What is 12 x 10?",
                answer: 120
            },
            {
                question: "What is 15 + 12?",
                answer: 27
            },
            {
                question: "What is 20 + 190?",
                answer: 210
            },
            {
                question: "What is 3 + 87?",
                answer: 90
            },
            {
                question: "What is 9 x 9?",
                answer: 120
            },
            {
                question: "What is 12 x 5?",
                answer: 60
            },
            {
                question: "What is 45 / 9?",
                answer: 5
            },
            {
                question: "What is 300 / 10?",
                answer: 30
            },
            {
                question: "What is 7 x 7?",
                answer: 49
            },
            {
                question: "What is 20 + 16?",
                answer: 36
            }
        ]
    end

    # Defined a method called math_equation
    def equation
        # assigning a variable with the 
        question = @math_equations.to_a.sample
        math_count = 0
        puts question[:question]
        answer = gets.chomp.to_i

        # While variable math_count is less than 3
        while math_count < 3
            # if the math count is more than 1 and question does not equal to answer
            if math_count > 1 and question[:answer] != answer
                var = "taxi".colorize(:yellow).underline
                puts "It seems you may still be drunk. It's safer to catch a #{var}."
            # if the variable 
            elsif question[:answer] == answer            
                font = TTY::Font.new(:doom)          
                puts font.write "You   got   it   right!"
                puts ""
                puts "You are okay to drive, but DRIVE SAFELY!"
                break
            else
                puts "You seems you got quesiton wrong. Try answer it again."
                answer = gets.chomp.to_i
            end
            math_count += 1
        end
    end
end