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
  # return str if str.length == 1
  hash = Hash.new(0)
  my_hash = {}
  string = ''
  str.each_char do |char|
    hash[char] += 1
  end
  my_hash = hash.sort_by {|k, v| v}
  my_hash[-1][-1].times do
    string += my_hash[-1][0]
  end
  return string
end

# Write a method bi_prime?(num) that accepts a number as an arg and returns a boolean indicating whether or not the number is a bi-prime. A bi-prime is a positive integer that can be obtained by multiplying two prime numbers.

def bi_prime?(num)
  array = []
  (2...num).each do |fac|
    if num % fac == 0
      array << fac
    end
  end
  return true if array.length == 1
  array.each do |ele|
    (2...ele).each do |fac2|
      if ele % fac2 == 0
        return false
      end
    end
  end
  true
end

# A Caesar cipher takes a word and encrypts it by offsetting each letter in the word by a fixed number, called the key. Given a key of 3, for example: a -> d, p -> s, and y -> b.

# A Vigenere Cipher is a Caesar cipher, but instead of a single key, a sequence of keys is used. For example, if we encrypt "bananasinpajamas" with the key sequence 1, 2, 3, then the result would be "ccqbpdtkqqcmbodt":

# Write a method vigenere_cipher(message, keys) that accepts a string and a key-sequence as args, returning the encrypted message. Assume that the message consists of only lowercase alphabetic characters.

def vigenere_cipher(message, keys)
  alphabet ='abcdefghijklmnopqrstuvwxyz'
  array = message.split('')
  my_arr = []
  new_array = array.each_slice(keys.length).to_a
  new_array.each do |arr|
    i = 0
    while i < keys.length
      arr[i] = alphabet[(alphabet.index(arr[i].to_s) + keys[i])%26]
      i += 1
    end
    my_arr << arr
  end
  my_arr.flatten.join('')
end

# Write a method vowel_rotate(str) that accepts a string as an arg and returns the string where every vowel is replaced with the vowel the appears before it sequentially in the original string. The first vowel of the string should be replaced with the last vowel.

def vowel_rotate(str)
  
end
