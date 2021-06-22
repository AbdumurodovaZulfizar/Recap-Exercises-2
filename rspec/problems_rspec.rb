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

describe "char_indices" do
  it "should return indexes of letters in hash" do
    expect(char_indices('mississippi')).to eq({"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]})
    expect(char_indices('classroom')).to eq({"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]})
  end
end

describe "longest_streak" do
  it "should return the longest part of the same letter of string" do
    expect(longest_streak('accccbbb')).to eq('cccc')
    expect(longest_streak('aaaxyyyyyzz')).to eq('yyyyy')
  end

  it "should return the letter when there is only one" do
    expect(longest_streak('a')).to eq('a')
  end

  it "should return the first part letter when all parts are equal" do
    expect(longest_streak('aaabbb')).to eq('aaa')
    expect(longest_streak('abc')).to eq('a')
  end
end

describe "bi_prime?" do
  it "should return true when the number is multiply of prime numbers" do
    expect(bi_prime?(14)).to eq(true)
    expect(bi_prime?(22)).to eq(true)
    expect(bi_prime?(25)).to eq(true)
    expect(bi_prime?(94)).to eq(true)
  end

  it "should return false if the number is not multiply of only prime numbers" do
    expect(bi_prime?(24)).to eq(false)
    expect(bi_prime?(64)).to eq(false)
  end
end