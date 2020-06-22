class SumOfMultiples
  DEF_MULTS = [3, 5]

  def self.to(num, mults = DEF_MULTS)
    (1..num - 1)
      .select { |val| mults.any? { |m| val % m == 0 } }
      .inject(0, &:+)
  end

  def initialize(*args)
    @mults = args
  end

  def to(num)
    self.class.to(num, @mults)
  end

end