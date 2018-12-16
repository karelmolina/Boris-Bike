require 'doking_station'

describe DokingStation do
  it 'respond to bike_release' do
    expect(subject).to respond_to :bike_release
  end

=begin
  it 'respond with working bikes' do
    bike = subject.bike_release
    expect(bike).to be_working
  end
=end

  it 'dock something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'return docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe '#bike_release'do
    it 'release a bike'do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike_release).to eq bike
    end

    it 'raise an error when there are no bike available' do
      expect {subject.bike_release}.to raise_error 'no bikes available'
    end
  end

  describe "#dock" do
    it "raise an error when full" do
      subject.dock(Bike.new)
      expect{subject.dock Bike.new}.to raise_error "Doking station full"
    end
  end
end
