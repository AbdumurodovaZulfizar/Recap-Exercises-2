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

# Write a method char_indices(str) that takes in a string as an arg. The method should return a hash containing 
# haracters as keys. The value associated with each key should be an array containing the indices where that character is # found.
def char_indices(str)
  hash = Hash.new { |h, k| h[k] = [] }
  str.each_char.with_index do |ele, idx|
    hash[ele] << idx
  end
  hash
end

# Write a method longest_streak(str) that accepts a string as an arg. The method should return the longest streak of consecutive characters in the string. If there are any ties, return the streak that occurs later in the string.
def longest_streak(str)
  
end