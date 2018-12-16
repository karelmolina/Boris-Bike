require 'doking_station'

describe DokingStation do
  it 'respond to bike_release' do
    expect(subject).to respond_to :bike_release
  end

  it 'respond with working bikes' do
    bike = subject.bike_release
    expect(bike).to be_working
  end
end
