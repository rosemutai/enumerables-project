module MyEnumerable
  def all?
    @list.each { |item| return false unless yield(item) }
    true
  end

  def any?
    @list.each { |item| return true if yield(item) }
    false
  end

  def filter
    result = []
    @list.each { |item| result << item if yield(item) }
    result
  end
end
