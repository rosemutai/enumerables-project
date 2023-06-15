require_relative 'my_enumerable'

class MyList
include MyEnumerable
def initialize(theList)
  @list = theList
end
 def each
  @list.each
 end
end

list = MyList.new([1, 2, 3, 4])

puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
