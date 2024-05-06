module Dog
  class Client
    include HTTParty
    base_uri 'https://dog.ceo/api'

    def random(breed: "hound")
      self.class.get("/breed/#{breed}/images/random", {})
    end
  end
end
