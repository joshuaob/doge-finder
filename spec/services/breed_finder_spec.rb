require 'rails_helper'

RSpec.describe BreedFinder do
  it 'returns a Doge when a valid breed is given' do
    breed = described_class.call(breed: 'shiba')
    expect(breed).to be_a(Doge)
  end

  it 'returns a nil when an valid breed is given' do
    breed = described_class.call(breed: 'invalid breed')
    expect(breed).to eql(nil)
  end
end
