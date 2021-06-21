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
  
end