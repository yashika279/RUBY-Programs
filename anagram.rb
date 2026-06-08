def group_anagrams(words)

  # HashMap
  groups = Hash.new { |hash, key| hash[key] = [] }

  words.each do |word|

    # Frequency array for 26 letters
    count = Array.new(26, 0)

    # Count each character
    word.each_char do |char|
      index = char.ord - 'a'.ord
      count[index] += 1
    end

    # Use frequency array as key
    groups[count] << word

  end

  groups.values
end

words = ["eat", "tea", "tan", "ate", "nat", "bat"]

p group_anagrams(words)