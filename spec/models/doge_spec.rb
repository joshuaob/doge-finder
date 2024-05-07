require 'rails_helper'

RSpec.describe Doge do
  before { @doge = described_class.new(breed: 'hound', image: 'image') }

  it 'responds to breed' do
    expect(@doge).to respond_to(:breed)
  end

  it 'responds to image' do
    expect(@doge).to respond_to(:image)
  end
end
