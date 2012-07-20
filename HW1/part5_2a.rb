class Numeric
  @@currencies = {'dollars'=>1.0, 'yen'=>0.013, 'euros'=>1.292, 'rupees'=>0.019}
  def method_missing(method_id, *args)
    name = method_id.to_s
    if name =~ /^(dollar|euro|rupee)$/
      self.send(name+'s')
    else
      if @@currencies.has_key?(name)
        self * @@currencies[name]
      else
        super
      end
    end
  end
  def in(currency)
    if @@currencies.has_key?(currency.to_s)
      self / @@currencies[currency.to_s]
    else
      super
    end
  end
end

puts 5.yen.in(:rupees)
puts 5.euros
puts 1.dollar.in(:yen)
puts 1.rupee
