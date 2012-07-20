class CartesianProduct
  include Enumerable
  def initialize (row, col)
  @row = row
  @col = col
  end
  attr_reader :row
  attr_reader :col
  def each
    @row.each{
      |r| @col.each{
        |c| yield [r, c]
      }
    }
  end
end
c = CartesianProduct.new([:a, :b, :c], [4, 5, 6])
c.each{|elt| puts elt.inspect}

