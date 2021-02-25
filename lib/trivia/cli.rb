class Trivia::CLI
    
    def run
        cheers
        Trivia::API.new.get_trivia
        start
        question_list
    
    end

    def cheers
        puts "Welcome to The Greatest Trivia Show!!!"
    end

    def start
        puts "Would you like to test your trivia knowledge?"
        input   

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
            #invalid message
    end

    def question_list
        empty = []
        empty << Trivia::Info.all
        empty
        binding.pry
    end

    def question
        #takes one question from list of questions
    end

    def input
        gets.strip
    end

end