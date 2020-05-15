require 'thermostat'

describe Thermostat do
  it 'returns default temperature' do
    expect(subject.temperature).to eq 20
  end

  context '#power_save_mode' do
    it 'returns default power save mode' do
      expect(subject.power_save_mode).to eq "off"
    end

    it "returns 'on' if power save mode is on" do
      subject.power_save_mode = "on"
      expect(subject.power_save_mode).to eq "on"
    end
  end
end
