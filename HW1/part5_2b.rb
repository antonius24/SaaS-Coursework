class String
  def palindrome?
    puts self.downcase.gsub(/[^a-z]/, '') == self.downcase.gsub(/[^a-z]/, '').reverse
  end

  def count_words
    hashes = Hash.new();
    self.downcase.scan(/\b[a-z]+\b/).each do |str| 
      if hashes.has_key?(str)
        hashes.store(str, hashes.fetch(str)+1)
      else
        hashes.store(str, 1)
      end 
    end
    puts hashes
  end
end
"A man, a plan, a canal -- Panama".palindrome?
"A man, a plan, a canal -- panama".count_words
