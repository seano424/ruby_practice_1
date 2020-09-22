require 'pry'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#   > substrings("below", dictionary)
#   => { "below" => 1, "low" => 1 }

def substrings(word, dictionary)
    word.downcase!
    hash = {}
    dictionary.each do |entry|
        arr = word.scan(entry)
        if arr.length > 0
            hash[entry] = arr.length
        end
    end
    hash
end

puts substrings("Howdy below down there", dictionary)