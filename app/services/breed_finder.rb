class BreedFinder
  def self.call(breed:)
    response = dog_api_client.random(breed:)

    if response['status'] == "success"
      image = response["message"]
      Doge.new(image:, breed:)
    else
      nil
    end
  end

  private

  def self.dog_api_client
    Dog::Client.new
  end
end
