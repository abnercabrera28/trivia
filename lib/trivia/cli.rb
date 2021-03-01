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
        prompt = TTY::Prompt.new
    
        choice = prompt.select("Would you like to test your trivia knowledge?") do |menu|
            menu.choice "Yes"
            menu.choice "No"
        end
    
        if choice == "Yes"
            one_question
        else choice == "No"
            goodbye
        end
    end
    
    def one_question
        Trivia::Info.all.each do |object|    
            puts HTMLEntities.new.decode object.question
            
            prompt = TTY::Prompt.new
    
            choice = prompt.select("True or False?") do |menu|
                menu.choice "True"
                menu.choice "False"
            end
        
            if choice == object.correct_answer
                puts "Correct!"
                continue
            else 
                puts "No, it's #{object.correct_answer}!"
                continue
            end
        end
    end
    
    def continue
        prompt = TTY::Prompt.new
    
        choice = prompt.select("Continue?") do |menu|
            menu.choice "Yes"
            menu.choice "No"
        end
    
        if choice == "Yes"
            
        else 
            goodbye
        end
        
    end
    
    def goodbye
        puts "Thanks for playing!"
        exit
    end

    def cats
        
    end

end
