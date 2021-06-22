require "./lib/problems"

describe "no_dupes?" do
  it "should return the elements that is unique in the array" do
    expect(no_dupes?([1, 1, 2, 1, 3, 2, 4])).to eq([3, 4])
    expect(no_dupes?(['x', 'x', 'y', 'z', 'z'])).to eq(['y'])
    expect(no_dupes?([true, true, true])).to eq([])
  end
end

describe "no_consecutive_repeats?" do
  it "should return true when there is no the same elements one by one" do
    expect(no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])).to eq(true)
    expect(no_consecutive_repeats?([10, 42, 3, 7, 10, 3])).to eq(true)
    expect(no_consecutive_repeats?(['x'])).to eq(true)
  end

  it "should return false when there is the same elements one by one" do
    expect(no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])).to eq(false)
    expect(no_consecutive_repeats?([10, 42, 3, 3, 10, 3])).to eq(false)
  end
end