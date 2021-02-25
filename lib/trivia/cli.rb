class Trivia::CLI
    
    def run
        cheers
        Trivia::API.new.get_trivia
        start
        
    end

    def cheers
        puts "Welcome to The Greatest Trivia Show!!!"
    end

    def start
        puts "Would you like to test your trivia knowledge?"
        menu   
    end

    def menu
        selection = input
        if selection == "y"
            puts "Let's begin!"
            puts " "
            #prints a question
            
        elsif selection == "n"
            puts "Thanks for playing!"
        else
            invalid
            menu
        end
    end

    def invalid
        puts "Invalid input! Try again"
    end

    def question_list
        empty = []
        empty << Trivia::Info.all
        empty
        
    end

    def question
        #takes one question from list of questions
    end

    def input
        gets.strip
    end

end