class Trivia::CLI
    
    def run
        cheers
        Trivia::API
        start
    end

    def cheers
        puts "Welcome to The Greatest Trivia Show!!!"
    end

    def start
        puts "Would you like to test your trivia knowledge?"
        question
    end

end