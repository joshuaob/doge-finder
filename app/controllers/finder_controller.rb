class FinderController < ApplicationController
  def index
    breeds = ['cockapoo', 'collie', 'labrador', 'pembroke', 'rottweiler']
    breed = breeds.sample
    @doge = BreedFinder.call(breed:)
  end

  def create
    breed = params['breed'].downcase
    @doge = BreedFinder.call(breed:)

    if @doge.present?
      respond_to do |format|
        format.turbo_stream
      end
    else
      respond_to do |format|
        format.turbo_stream { flash.now[:notice] = "Breed not found, check your spelling and try again." }
      end
    end
  end
end
