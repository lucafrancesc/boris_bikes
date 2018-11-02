require 'bike'

describe Bike do
  it { is_expected.to respond_to(:working?).with(1).argument }
  it { is_expected.to respond_to :bike_status }


  it 'checks if the bike is working' do
    subject.working?("yes")
    expect(subject.bike_status).to eq "Working"
  end

  it 'checks if the bike is working' do
    subject.working?("no")
    expect(subject.bike_status).to eq "Broken"
  end

  it 'returns the bike status' do
    expect(subject.bike_status).to eq "Working"
  end

end
