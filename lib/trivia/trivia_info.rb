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
        self.all.map.with_index(1) do |subject, index|
            HTMLEntities.new.decode "#{index}. #{subject.question}" ##{subject.correct_answer} #{subject.incorrect_answers.join}"
        end
        #currently an array of strings/you want an array of arrays(?)
    end

    #self.all[27].correct_answer

end