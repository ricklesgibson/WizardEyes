#MAP


#**TODO ENTER CODE**
# * use map to upcase the names of an array



#**TODO ENTER CODE**
# * use map to square(multiply the number by itself) an sequence of numbers



#**TODO ENTER CODE**
# * use map to add 1 to each number in a sequence of numbers



##Explain in words
# TODO Why does result equal what it does?
=begin
=end
array = [1,2,3,4,5]
result = array.map {|n| puts n * 100 }


##Explain in words
# TODO What is going on in the following code block?

=begin

=end


class Cat
  attr_accessor :years
  def initialize(years)
    self.years = years
  end

end

cats = 10.step(25,3).map { |i| Cat.new( i) }


