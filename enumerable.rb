module MyEnumerable
  def all?
    each do |x|
      return false unless yield(x)
    end
    true
  end

  def any?
    each do |x|
      return true unless yield(x)
    end
    false
  end

  def filter
    result = []
    each do |x|
      result << x if yield(x)
    end
    result
  end
end
