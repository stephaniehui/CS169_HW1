module FunWithStrings
  def palindrome?
    # your code here
    rev = self.gsub(/\W/, '').reverse.downcase
    if self.downcase.gsub(/\W/, '') == rev
      return true
    end
    return false
  end
  
  def count_words
    # your code here
    h = Hash.new(0)
    string = self.downcase
    array = string.split(/[^\w]/)
    array.each do |value|
      if value != ""
        h[value] += 1
      end
    end
    return h
  end

  def sortword(word)
    return word.split("").sort.join
  end

  def anagram_groups
    hash = Hash.new(0)
    s = self
    if s.empty?
      return []
    end
    #s = self.split(/[^\w]/)
    s.each do |word|
      sortedWord = sortword(word)
      if hash[sortedWord] == nil
        hash[sortedWord] = [] << word
      else
        hash[sortedWord] << word
      end
    end
    result = []
    hash.each_value do |anagram|
      result << anagram
    end
    return result
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
