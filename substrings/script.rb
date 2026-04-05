def substrings(string, dictionary)
  string.split(" ").reduce(Hash.new(0)) do |hash, word|
    dictionary.each do |substring|
      if word.downcase.include?(substring)
        hash[substring] += 1
      end
    end
    hash
  end
end

dictionary = 
    ["below", "down", "go", "going", "horn", "how", "howdy",
    "it", "i", "low", "own", "part", "partner", "sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
