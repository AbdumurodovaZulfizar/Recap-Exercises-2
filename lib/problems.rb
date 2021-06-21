# Write a method no_dupes?(arr) that accepts an array as an arg and returns an new array containing the elements that were not repeated in the array.
def no_dupes?(arr)
  array = []
  hash = Hash.new(0)
  arr.each do |ele|
    hash[ele] += 1
  end
  hash.each do |k, v|
    array << k if v == 1
  end
  array
end

# Write a method no_consecutive_repeats?(arr) that accepts an array as an arg. The method should return true if an element never appears consecutively in the array; it should return false otherwise.

def no_consecutive_repeats?(arr)
  array=[]
  return true if arr.length == 1
  arr.each_with_index do |ele1, i1|
    arr.each_with_index do |ele2, i2|
      if i2 == i1 + 1
        if arr[i1] == arr[i2]
          return false
        end
      end
    end
  end
  true
end

puts no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
puts no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
puts no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
puts no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
puts no_consecutive_repeats?(['x'])                              # => true
