class Trivia::Info

    @@all = []

    def initialize(hash)
        hash.each do |key, value| 
          self.class.attr_accessor(key)
          self.send("#{key}=", value)
        end
        @@all << self
    end

    def self.all
        @@all
    end

    def self.question_list
        self.all.each do |subject|
            puts "#{subject.question}"
        end
    end

    def questions
        puts self.question
        binding.pry
    end



end