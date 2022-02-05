# Find all sets of anagrams from a dictionary of words.

dict = %w[
  rod
  spot
  dam
  stop
  shaft
  tops
  pots
  mad
  dor
  tashf
]

letters = " abcdefghijklmnopqrstuvwxyz".split('')
letmap = {}
letters.each_with_index { |letter, index| letmap[letter] = index}  

anamap = {}
dict.each do |word|
  sum = 0
  puts word
  word.each_char do |letter|
    sum += letmap[letter]
  end
  anamap[sum] = Array.new if anamap[sum].nil?
  anamap[sum].push(word)
end

puts anamap

