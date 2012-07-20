def combine_anagrams(array)
  hash = Hash.new();
  array.each do |word|
  sorted = word.downcase.split('').sort.join.to_s
  if hash.has_key?(sorted)
    hash.store(sorted, hash.fetch(sorted).push(word))
  else
    hash.store(sorted, Array.new(1,word))
  end
  end
  puts hash.values.to_s
end

combine_anagrams(['cars', 'for', 'potatoes', 'races', 'four', 'scar', 'creams', 'scream'])
