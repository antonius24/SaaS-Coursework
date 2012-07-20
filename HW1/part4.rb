class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def delicious?
    return true
  end
  
  def healthy?
    if @calories.to_i < 200
      return true
    else
      return false
    end
  end
  attr_accessor :name
  attr_accessor :calories
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end
  
  def delicious?
    if (@flavor == "black licorice")
      return false
    else
      return true
    end
  end
  
  attr_accessor :flavor
end

jelly = JellyBean.new("jj", "100", "black licorice")
puts jelly.healthy?
puts jelly.delicious?
