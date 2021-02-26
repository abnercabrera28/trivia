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
        self.all.map do |subject|
            HTMLEntities.new.decode "#{subject.question}"
        end
    end

    def self.one_question
        puts self.question_list.sample
    end



end