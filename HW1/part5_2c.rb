module Enumerable
  def palindrome?
    self.collect{|x| x} == self.collect{|x| x}.reverse
  end
end
puts [1,2,3,2,1].palindrome?
