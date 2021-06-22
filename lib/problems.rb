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
  new_str = str[0..-1]
    vowels = 'aeiou'

    vowel_idxs = (0...str.length).select { |i| vowels.include?(str[i]) }
    rotated_vowel_idxs = vowel_idxs.rotate(-1)

    vowel_idxs.each_with_index do |vowel_idx, i|
        new_vowel = str[rotated_vowel_idxs[i]]
        new_str[vowel_idx] = new_vowel
    end

    new_str
end

# Extend the string class by defining a String#select method that accepts a block. The method should return a new string containing characters of the original string that return true when passed into the block. If no block is passed, then return the empty string. Do not use the built-in Array#select in your solution.

public

def my_select
  return '' unless block_given?

    selected_str = ''
    self.each_char { |ele| selected_str += ele if yield(ele)}
    selected_str
end

# Extend the string class by defining a String#map! method that accepts a block. The method should modify the existing string by replacing every character with the result of calling the block, passing in the original character and it's index. Do not use the built-in Array#map or Array#map! in your solution.

def map!(&prc)
  self.each_char.with_index do |char, idx|
      self[idx] = prc.call(char, idx)
  end
end

# Write a method multiply(a, b) that takes in two numbers and returns their product.

# You must solve this recursively (no loops!)
# You must not use the multiplication (*) operator
def multiply(a, b)
  mul = 0
  if a >= 0 && b >= 0
    a.times do
      mul += b
    end
  elsif a >= 0 && b < 0
    a.times do
      mul += b
    end
  else a < 0 && b < 0
    (-a).times do
      mul += (-b)
    end
  end
  puts mul
end

# The Lucas Sequence is a sequence of numbers. The first number of the sequence is 2. The second number of the Lucas Sequence is 1. To generate the next number of the sequence, we add up the previous two numbers. For example, the first six numbers of the sequence are: 2, 1, 3, 4, 7, 11, ...

# Write a method lucasSequence that accepts a number representing a length as an arg. The method should return an array containing the Lucas Sequence up to the given length. Solve this recursively.

def lucas_sequence(num)
  arr = []
  return arr if num == 0
  return arr << 2 if num == 1
  return lucas_sequence(1) << 1 if num == 2
  if num > 2
    arr = lucas_sequence(num-1) << (lucas_sequence(num-1)[-1] + lucas_sequence(num-1)[-2])
  end
  arr
end

# Write a method prime_factorization(num) that accepts a number and returns an array representing the prime factorization of the given number. This means that the array should contain only prime numbers that multiply together to the given num. The array returned should contain numbers in ascending order. Do this recursively.

def prime_factorization(num)
  (2...num).each do |fact|
    if (num % fact == 0)
        otherFact = num / fact
        return [ *prime_factorization(fact), *prime_factorization(otherFact) ]
    end
  end

  [num]
end

prime_factorization(12)     # => [2, 2, 3]
prime_factorization(24)     # => [2, 2, 2, 3]
prime_factorization(25)     # => [5, 5]
prime_factorization(60)     # => [2, 2, 3, 5]
prime_factorization(7)      # => [7]
prime_factorization(11)     # => [11]
prime_factorization(2017)   # => [2017]