require_relative "Math_equation"
require 'tty-font'
require 'colorize'

class How_many_drinks

    # attr_accessor :how_many 
    # attr_reader :pos_num

    # def initialize 
    # end

    def pos_num num
        #Using a regular expression, we match the pattern against the parsed in variable to see if it is an positive integer 
        !/\A\d+\z/.match(num)
    end
    
    def how_many
        count = 0 
        puts "How many drinks have you had in the last 6 hours?"
        drink_count = gets.chomp

        # Using a while loop, while the count variable is less than 3
        while count < 3
            # if the count variable is more than 1 and drink_count is not an integer
            if count > 1 and pos_num drink_count
                # print a message and end loop.
                font = TTY::Font.new(:doom)
                puts font.write("Game over dude").colorize(:red)
                uber = "uber".colorize(:yellow).underline
                puts "You tried three times and did not enter a number correctly. You are probably wasted. You should catch an #{uber}"
            # if the drink_count is not an integer
            elsif pos_num drink_count
                # print message
                puts "Oh dear. It seems you entered in the wrong thing. Try entering a number."
                puts "How many drinks have you had in the last 6 hours?"
                drink_count = gets.chomp
            else
                # convert string to integer
                drink_count = drink_count.to_i
                if drink_count > 10
                    font = TTY::Font.new(:doom)
                    puts font.write("WARNING!!!").colorize(:color => :red)
                    puts "You are waaayyy over the limit! Take a taxi mate!"
                elsif drink_count > 6 and drink_count <= 10
                    puts "You are a bit over the limit, it's safer to take a taxi."
                else
                    # print messages
                    math = Math_equation.new
                    puts math.equation
                end
                break
            end
        # increment count variable by 1
            count += 1
        end
    end
end