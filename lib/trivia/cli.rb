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
        puts "Would you like to test your trivia knowledge? (y/n)"
        menu   
    end

    def menu
        selection = input
        if selection == "y"
            puts "Let's begin!"
            puts " "
            one_question
            #binding.pry
        elsif selection == "n"
            puts "Thanks for playing!"
        else
            invalid
            menu
        end
    end

    def one_question
        Trivia::Info.all.each do |object|    
            puts HTMLEntities.new.decode object.question
        selection = input
        if selection == object.correct_answer
            puts "Correct!"
            continue
        else 
            puts "No, it's #{object.correct_answer}!"
            continue
        end
        
    end
    end

    def continue
        puts "Continue?"
        selection = input
        if selection == "y"
        
        else 
            exit
        end

    end

    
    

    def invalid
        puts "Invalid input! Try again"
    end

    def input
        gets.strip
    end

end
