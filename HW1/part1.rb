  def palindrome?(string)
    puts string.downcase.gsub(/[^a-z]/, '') == string.downcase.gsub(/[^a-z]/, '').reverse
  end

  def count_words(string)
    hashes = Hash.new();
    string.downcase.scan(/\b[a-z]+\b/).each do |str| 
      if hashes.has_key?(str)
        hashes.store(str, hashes.fetch(str)+1)
      else
        hashes.store(str, 1)
      end 
    end
    puts hashes
  end

palindrome?("A man, a plan, a canal -- Panama")
count_words("A man, a plan, a canal -- panama")
count_words "Doo bee doo bee doo"
