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

    def user_input
        gets.strip
    end

end