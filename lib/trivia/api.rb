class Trivia::API

    URL = "https://opentdb.com/api.php?amount=50&type=boolean"

    def get_trivia
        hash = HTTParty.get(URL)
        hash["results"]
        binding.pry
    end

end