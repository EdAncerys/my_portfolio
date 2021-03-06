require 'journey'
require 'oystercard'

describe Journey do
  before(:each) do
    @card = Oystercard.new
    @card.top_up(50)
    @card.touch_in("Camden")
  end

  PENALTY = 6

  it "gives penalty if trying to touch in more than once in same journey" do
    expect{ @card.touch_in("Waterloo") }.to change{@card.balance}.by(-PENALTY)
  end

  it "gives penalty if trying to touch out more than once in same journey" do
    @card.touch_out("Waterloo")
    expect{ @card.touch_out("Canary Wharf") }.to change{@card.balance}.by(-PENALTY)
  end
end
