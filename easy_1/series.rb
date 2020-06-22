class Series
  def initialize(str_num)
    @digs = str_num.split('').map(&:to_i)
  end

  def slices(n)
    raise ArgumentError if n > @digs.length
    @digs.each_cons(n).to_a
  end
end